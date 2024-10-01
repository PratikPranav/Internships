<?php
if(isset($_POST["sb"])){
   
     $server = "localhost";
     $username = "root";
     $password = " ";

     $connect = mysqli_connect($server,$username,$password);
     
    //  if ($connect->connect_error) {
    //     die("Connection failed: " . $connect->connect_error);
    // }
    if(!$connect){     //function to check if connection is success or not
        die("connection to database failed due to " . mysqli_connect_error());

    $fname = $_POST["fnt"];
    $lname = $_POST["lnt"];
    $pno = $_POST["pnt"];
    $gender = $_POST["gender"];
    $mas = $_POST["mas"];
    $add = $_POST["ta"];
 
    $query = "INSERT INTO `formdata`.`submitform` (`fname`, `lname`, `phoneno`, `gender`, `martial status`, `address`) VALUES ('$fname', '$lname', '$pno', '$gender', '$mas', '$add');";
    $result = mysqli_query($connect,$query);

    if($result)
    {
        echo "data inserted successfully";
    }
    else{
        echo "data not inserted";
    }
   
}

?>