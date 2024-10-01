<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mediyum1";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch projects from the database
$sql = "SELECT id, project_name FROM projects";
$result = $conn->query($sql);
$projects = [];
if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $projects[] = $row;
    }
}

// Initialize the teammate ID (assuming it’s set somewhere in your application)
$teammate_id = 1; // Replace with the actual value or fetch dynamically

// Handle the form submission to get the selected month
$selectedMonth = isset($_POST['month']) ? $_POST['month'] : date('F');

// Convert month name to number
$monthNumber = date('m', strtotime($selectedMonth));
$year = date('Y'); // Use the current year or get it dynamically if needed
$daysInMonth = cal_days_in_month(CAL_GREGORIAN, $monthNumber, $year);

// Fetch public holidays for the month
$holidaysSql = "SELECT holiday_date FROM public_holidays WHERE YEAR(holiday_date) = ? AND MONTH(holiday_date) = ?";
$stmt = $conn->prepare($holidaysSql);
$stmt->bind_param("ii", $year, $monthNumber);
$stmt->execute();
$holidaysResult = $stmt->get_result();
$holidays = [];
if ($holidaysResult && $holidaysResult->num_rows > 0) {
    while ($row = $holidaysResult->fetch_assoc()) {
        $holidays[] = $row['holiday_date'];
    }
}
$stmt->close();

// Fetch leave days for the teammate for the month
$leaveSql = "SELECT leave_date FROM leaves WHERE teammate_id = ? AND YEAR(leave_date) = ? AND MONTH(leave_date) = ?";
$stmt = $conn->prepare($leaveSql);
$stmt->bind_param("iii", $teammate_id, $year, $monthNumber);
$stmt->execute();
$leaveResult = $stmt->get_result();
$leaves = [];
if ($leaveResult && $leaveResult->num_rows > 0) {
    while ($row = $leaveResult->fetch_assoc()) {
        $leaves[] = $row['leave_date'];
    }
}
$stmt->close();

// Handling form submission for selected hours per day
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['hours'])) {
    // Prepare SQL statements for both insert and update operations
    $checkSql = "SELECT id FROM timesheets WHERE teammate_id = ? AND date = ?";
    $insertSql = "INSERT INTO timesheets (teammate_id, date, hour1, hour2, hour3, hour4, hour5, hour6, hour7, hour8) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $updateSql = "UPDATE timesheets SET hour1 = ?, hour2 = ?, hour3 = ?, hour4 = ?, hour5 = ?, hour6 = ?, hour7 = ?, hour8 = ? WHERE id = ?";

    foreach ($_POST['hours'] as $day => $hours) {
        $date = $year . '-' . $monthNumber . '-' . str_pad($day, 2, '0', STR_PAD_LEFT); // Format date as YYYY-MM-DD
        
        // Skip invalid entries
        if (empty($hours) || !isset($hours[1])) {
            continue;
        }

        // Check if a record exists for the current teammate_id and date
        $stmt = $conn->prepare($checkSql);
        $stmt->bind_param("is", $teammate_id, $date);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if ($result->num_rows > 0) {
            // Update the existing row
            $timesheet_id = $result->fetch_assoc()['id'];
            $stmt = $conn->prepare($updateSql);
            $stmt->bind_param(
                "iiiiiiiii",
                $hours[1], $hours[2], $hours[3], $hours[4],
                $hours[5], $hours[6], $hours[7], $hours[8], $timesheet_id
            );
        } else {
            // Insert a new row if no existing record
            $stmt = $conn->prepare($insertSql);
            $stmt->bind_param(
                "isiiiiiiii",
                $teammate_id, $date,
                $hours[1], $hours[2], $hours[3], $hours[4],
                $hours[5], $hours[6], $hours[7], $hours[8]
            );
        }

        // Execute and check for errors
        if (!$stmt->execute()) {
            echo "Error: " . $stmt->error . "<br>";
        }

        $stmt->close();
    }
}
?>

<!-- Month selection form -->
<form method="POST">
    <label for="month">Select Month:</label>
    <select name="month" id="month" onchange="this.form.submit()">
        <?php
        // Generate the month options dynamically
        for ($m = 1; $m <= 12; $m++) {
            $monthName = date('F', mktime(0, 0, 0, $m, 10));
            echo '<option value="' . $monthName . '"' . ($selectedMonth == $monthName ? ' selected' : '') . '>' . $monthName . '</option>';
        }
        ?>
    </select>
</form>

<?php
// Loop through each day in the selected month and generate the table
echo '<form method="POST">';
echo '<table border="1">';
echo '<tr><th>Day</th>';
for ($hour = 1; $hour <= 8; $hour++) {
    echo "<th>Hour $hour</th>";
}
echo '</tr>';

for ($day = 1; $day <= $daysInMonth; $day++) {
    $date = $year . '-' . $monthNumber . '-' . str_pad($day, 2, '0', STR_PAD_LEFT); // Format date as YYYY-MM-DD
    
    // Check if the date is a Sunday
    $isSunday = (date('N', strtotime($date)) == 7);

    // Check if the date is a public holiday
    $isPublicHoliday = in_array($date, $holidays);

    // Check if the date is a leave day for the teammate
    $isLeaveDay = in_array($date, $leaves);

    echo "<tr>";
    echo "<td>$day</td>";

    if ($isSunday) {
        // If it's Sunday, just display "Sunday" across all hours
        for ($hour = 1; $hour <= 8; $hour++) {
            echo "<td>Sunday</td>";
        }
    } elseif ($isPublicHoliday) {
        // If it's a public holiday, display "Public Holiday" across all hours
        for ($hour = 1; $hour <= 8; $hour++) {
            echo "<td>Public Holiday</td>";
        }
    } elseif ($isLeaveDay) {
        // If it's a leave day, display "Leave" across all hours
        for ($hour = 1; $hour <= 8; $hour++) {
            echo "<td>Leave</td>";
        }
    } else {
        // For regular days, display dropdowns
        for ($hour = 1; $hour <= 8; $hour++) {
            echo "<td>";
            echo "<select name='hours[$day][$hour]'>";
            foreach ($projects as $project) {
                echo '<option value="' . $project['id'] . '">' . $project['project_name'] . '</option>';
            }
            echo "</select>";
            echo "</td>";
        }
    }

    echo "</tr>";
}

echo '</table>';
echo '<input type="submit" value="Submit">';
echo '</form>';

$conn->close();
?>
