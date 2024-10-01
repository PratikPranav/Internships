<!-- Author : Pratik Pranav
start date:04/08/23
Edited date: 04/08/23 -->
<?php 

require '../header1.php';

$sql = 'SELECT * FROM job_order where id="'.$_GET['id'].'"';

$statement = $conn->query($sql);

$publishers = $statement->fetchAll(PDO::FETCH_ASSOC);

if ($publishers) {

  foreach ($publishers as $row) {

   $cust_name= $row['cust_name'];

   $disc= $row['disc'];

   $size= $row['size'];
   $cnou= $row['cnou'];



   $qty =$row['qty'];



 }

}



$sql1 = 'SELECT * FROM stage6 where j_id="'.$_GET['id'].'"';

$statement1 = $conn->query($sql1);

$publishers1 = $statement1->fetchAll(PDO::FETCH_ASSOC);

if ($publishers1) {

  foreach ($publishers1 as $row1) {
$p_name1= $row1['p_name1'];
$p_name2= $row1['p_name2'];
$p_name3= $row1['p_name3'];
$p_batch1= $row1['p_batch1'];
$p_batch2= $row1['p_batch2'];
$p_batch3= $row1['p_batch3'];
$p_code1= $row1['p_code1'];
$p_code2= $row1['p_code2'];
$p_code3= $row1['p_code3'];
$p_machine1= $row1['p_machine1'];
$p_machine2= $row1['p_machine2'];
$p_machine3= $row1['p_machine3'];
$p_date1= $row1['p_date1'];
$p_time1= $row1['p_time1'];
$p_date2= $row1['p_date2'];
$p_time2= $row1['p_time2'];
$p_date3= $row1['p_date3'];
$p_time3= $row1['p_time3'];
$Folding1= $row1['Folding1'];
$Folding2= $row1['Folding2'];
$Folding3= $row1['Folding3'];
$Folding4= $row1['Folding4'];
$Folding5= $row1['Folding5'];
$Folding6= $row1['Folding6'];
$Folding7= $row1['Folding7'];
$Folding8= $row1['Folding8'];
$Folding9= $row1['Folding9'];
$machine1= $row1['machine1'];
$machine2= $row1['machine2'];
$machine3= $row1['machine3'];
$operator1= $row1['operator1'];
$operator2= $row1['operator2'];
$operator3= $row1['operator3'];
$team1= $row1['team1'];
$team2= $row1['team2'];
$team3= $row1['team3'];
$start_date1= $row1['start_date1'];
$start_date2= $row1['start_date2'];
$start_date3= $row1['start_date3'];
$start_date4= $row1['start_date4'];
$start_date5= $row1['start_date5'];
$start_date6= $row1['start_date6'];
$start_time1= $row1['start_time1'];
$start_time2= $row1['start_time2'];
$start_time3= $row1['start_time3'];
$start_time4= $row1['start_time4'];
$start_time5= $row1['start_time5'];
$start_time6= $row1['start_time6'];
$Leaflet1= $row1['Leaflet1'];
$Leaflet2= $row1['Leaflet2'];
$Leaflet3= $row1['Leaflet3'];
$Leaflet4= $row1['Leaflet4'];
$Leaflet5= $row1['Leaflet5'];
$Leaflet6= $row1['Leaflet6'];
$Leaflet7= $row1['Leaflet7'];
$Leaflet8= $row1['Leaflet8'];
$Leaflet9= $row1['Leaflet9'];
$stage5_date= $row1['stage5_date'];
$stage5_qty_issued= $row1['stage5_qty_issued'];
$stage5_Rejection= $row1['stage5_Rejection'];
$stage5_released= $row1['stage5_released'];
$stage5_sign= $row1['stage5_sign'];
$stage5_remark= $row1['stage5_remark'];
$stage5_approved1= $row1['stage5_approved1'];
$stage5_approved2= $row1['stage5_approved2'];

  }

}else{

$p_name1="";
$p_name2="";
$p_name3="";
$p_batch1="";
$p_batch2="";
$p_batch3="";
$p_code1="";
$p_code2="";
$p_code3="";
$p_machine1="";
$p_machine2="";
$p_machine3="";
$p_date1="";
$p_time1="";
$p_date2="";
$p_time2="";
$p_date3="";
$p_time3="";
$Folding1="";
$Folding2="";
$Folding3="";
$Folding4="";
$Folding5="";
$Folding6="";
$Folding7="";
$Folding8="";
$Folding9="";
$machine1="";
$machine2="";
$machine3="";
$operator1="";
$operator2="";
$operator3="";
$team1="";
$team2="";
$team3="";
$start_date1="";
$start_date2="";
$start_date3="";
$start_date4="";
$start_date5="";
$start_date6="";
$start_time1="";
$start_time2="";
$start_time3="";
$start_time4="";
$start_time5="";
$start_time6="";
$Leaflet1="";
$Leaflet2="";
$Leaflet3="";
$Leaflet4="";
$Leaflet5="";
$Leaflet6="";
$Leaflet7="";
$Leaflet8="";
$Leaflet9="";
$stage5_date="";
$stage5_qty_issued="";
$stage5_Rejection="";
$stage5_released="";
$stage5_sign="";
$stage5_remark="";
$stage5_approved1="";
$stage5_approved2="";

$sql2 = 'SELECT * FROM stage5 where j_id="'.$_GET['id'].'"';

$statement2 = $conn->query($sql2);

$publishers2 = $statement2->fetchAll(PDO::FETCH_ASSOC);

if ($publishers2) {

  foreach ($publishers2 as $row2) {

$stage5_qty_issued= $row2['stage4_released'];
  }
}


}


?>

<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Abc | Folding Machine 6.0</title>



  <!-- Google Font: Source Sans Pro -->

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

  <!-- Font Awesome -->

  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">

  <!-- daterange picker -->

  <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">

  <!-- iCheck for checkboxes and radio inputs -->

  <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">

  <!-- Bootstrap Color Picker -->

  <link rel="stylesheet" href="../plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">

  <!-- Tempusdominus Bootstrap 4 -->

  <link rel="stylesheet" href="../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">

  <!-- Select2 -->

  <link rel="stylesheet" href="../plugins/select2/css/select2.min.css">

  <link rel="stylesheet" href="../plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">

  <!-- Bootstrap4 Duallistbox -->

  <link rel="stylesheet" href="../plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">

  <!-- BS Stepper -->

  <link rel="stylesheet" href="../plugins/bs-stepper/css/bs-stepper.min.css">

  <!-- dropzonejs -->

  <link rel="stylesheet" href="../plugins/dropzone/min/dropzone.min.css">

  <!-- DataTables -->

  <link rel="stylesheet" href="../plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">

  <link rel="stylesheet" href="../plugins/datatables-responsive/css/responsive.bootstrap4.min.css">

  <link rel="stylesheet" href="../plugins/datatables-buttons/css/buttons.bootstrap4.min.css">

  <!-- Theme style -->

  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
  <style type="text/css">
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
       text-align: center;
    }
  </style>


</head>

<body class="hold-transition sidebar-mini">

  <div class="wrapper">

    <!-- Navbar -->

    <?php require '../nave1.php'; ?>

    <!-- /.navbar -->



    <!-- Main Sidebar Container -->

    <?php require '../sidebar1.php'; ?>



    <!-- Content Wrapper. Contains page content -->

    <div class="content-wrapper">

      <!-- Content Header (Page header) -->

      <section class="content-header">

        <div class="container-fluid">

          <div class="row mb-2">

            <div class="col-sm-6">

            <h4>Job Order: </h4>
              <h6><b>Name:</b> <?php echo $cust_name; ?></h6>
              <h6><b>Description:</b> <?php echo  $disc; ?></h6>


            </div>
            <div class="col-sm-2">

              <!-- <a href="viewjob.php?id=<?php echo $_GET['id']; ?>" target="_blank"><input type="button" class="btn-primary" name="" value="View Work Instruction Job Order"></a> -->

            </div>


            <div class="col-sm-3">

              <ol class="breadcrumb float-sm-right">

                <li class="breadcrumb-item"><a href="../index.php">Home</a></li>

                <li class="breadcrumb-item active">Folding Machine </li>

              </ol>

            </div>
               <div class="col-sm-1 ">

             <button onclick="history.back()" style="float: right;">Back</button>

           </div>

          </div>

        </div><!-- /.container-fluid -->

      </section>



      <!-- Main content -->

      <section class="content">

        <div class="container-fluid">



          <div class="col-md-12">



            <div class="card card-info">

              <div class="card-header">

                <h3 class="card-title">Folding Machine 6.0</h3>

              </div>

              <div class="card-body" style="background: lightgray;">

                <form id="form1">
                  <input type="hidden" value="<?php echo $_GET['id']; ?>" name="j_id" id="j_id">

                  <input type="hidden" value="<?php echo $cnou; ?>" name="cnou" id="cnou">

                  <table style="width:100%;">
                    <tr><td colspan="8" style="text-align: center;">6.0 Folding Machine</td></tr>
                    <tr>
                      <td colspan="2">6.1 Line Clearance</td>
                      <td colspan="2">I</td>
                      <td colspan="2">II</td>
                      <td colspan="2">III</td>

                    </tr>
                    <tr>
                     <td rowspan="3">Previous job</td>
                     <td >Name</td>
                     <td colspan="2"><input type="text" value="<?php echo $p_name1; ?>" id="p_name1" name="p_name1"> </td>
                     <td colspan="2"><input type="text" value="<?php echo $p_name2; ?>" id="p_name2" name="p_name2"> </td>
                     <td colspan="2"><input type="text" value="<?php echo $p_name3; ?>" id="p_name3" name="p_name3"> </td>

                   </tr>
                   <tr>

                    <td >Batch No.</td>
                    <td colspan="2"><input type="text" value="<?php echo $p_batch1; ?>" id="p_batch1" name="p_batch1"> </td>
                    <td colspan="2"><input type="text" value="<?php echo $p_batch2; ?>" id="p_batch2" name="p_batch2"> </td>
                    <td colspan="2"><input type="text" value="<?php echo $p_batch3; ?>" id="p_batch3" name="p_batch3"> </td>

                  </tr>
                  <tr>

                    <td >Code No.</td>
                    <td colspan="2"><input type="text" value="<?php echo $p_code1; ?>" id="p_code1" name="p_code1"> </td>
                    <td colspan="2"><input type="text" value="<?php echo $p_code2; ?>" id="p_code2" name="p_code2"> </td>
                    <td colspan="2"><input type="text" value="<?php echo $p_code3; ?>" id="p_code3" name="p_code3"> </td>

                  </tr>
                  <tr>

                    <td colspan="2">Machine No.</td>
                    <td colspan="2"><input type="text" value="<?php echo $p_machine1; ?>" id="p_machine1" name="p_machine1"> </td>
                    <td colspan="2"><input type="text" value="<?php echo $p_machine2; ?>" id="p_machine2" name="p_machine2"> </td>
                    <td colspan="2"><input type="text" value="<?php echo $p_machine3; ?>" id="p_machine3" name="p_machine3"> </td>

                  </tr>
                  <tr>

                    <td colspan="2">Date Time</td>
                    <td ><input type="date" value="<?php echo $p_date1; ?>" id="p_date1" name="p_date1"> </td>
                    <td ><input type="time" value="<?php echo $p_time1; ?>" id="p_time1" name="p_time1"> </td>
                    <td ><input type="date" value="<?php echo $p_date2; ?>" id="p_date2" name="p_date2"> </td>
                    <td ><input type="time" value="<?php echo $p_time2; ?>" id="p_time2" name="p_time2"> </td>
                    <td ><input type="date" value="<?php echo $p_date3; ?>" id="p_date3" name="p_date3"> </td>
                    <td ><input type="time" value="<?php echo $p_time3; ?>" id="p_time3" name="p_time3"> </td>

                  </tr>

                </table>
                <br>
                <table style="width:100%;">
                  <tr>
                    <td colspan="12">.</td>
                  </tr>
                  <tr>
                    <td rowspan="2">Paremeters to be checked before Line Clearance</td>
                    <td colspan="3">Done by production</td>
                    <td colspan="3">Check by Plant Manager</td>
                    <td colspan="3">Approved by QC</td>

                  </tr>
                  <tr>
                    <td >I</td>
                    <td >II</td>
                    <td >III</td>
                    <td >I</td>
                    <td >II</td>
                    <td >III</td>
                    <td >I</td>
                    <td >II</td>
                    <td >III</td>

                  </tr>
                  <tr>
                    <td>Folding Machine Feeder Pile</td>
                    <td rowspan="6"><input type="text" value="<?php echo $Folding1; ?>" id="Folding1" name="Folding1" style="width: 80px;"></td>
                    <td rowspan="6"><input type="text" value="<?php echo $Folding2; ?>" id="Folding2" name="Folding2" style="width: 80px;"></td>
                    <td rowspan="6"><input type="text" value="<?php echo $Folding3; ?>" id="Folding3" name="Folding3" style="width: 80px;"></td>
                    <td rowspan="6"><input type="text" value="<?php echo $Folding4; ?>" id="Folding4" name="Folding4" style="width: 80px;"></td>
                    <td rowspan="6"><input type="text" value="<?php echo $Folding5; ?>" id="Folding5" name="Folding5" style="width: 80px;"></td>
                    <td rowspan="6"><input type="text" value="<?php echo $Folding6; ?>" id="Folding6" name="Folding6" style="width: 80px;"></td>
                    <td rowspan="6"><input type="text" value="<?php echo $Folding7; ?>" id="Folding7" name="Folding7" style="width: 80px;"></td>
                    <td rowspan="6"><input type="text" value="<?php echo $Folding8; ?>" id="Folding8" name="Folding8" style="width: 80px;"></td>
                    <td rowspan="6"><input type="text" value="<?php echo $Folding9; ?>" id="Folding9" name="Folding9" style="width: 80px;"></td>

                  </tr>
                
                 
                 <tr>
                  <td>
                    Machine Delivary Pile 
                 </td>
               </tr>
                <tr>
                  <td>
                    Under Equipment 
                 </td>
               </tr>
                <tr>
                  <td>
                    Area Cleanliness 
                 </td>
               </tr>
                <tr>
                  <td>
                    Pallets / Crates used for Production 
                 </td>
               </tr>
                <tr>
                  <td>
                   Drawerd / Tables / Storage boxes 
                 </td>
               </tr>
             </table>
<br>
            <table style="width:100%;">
              <tr>
                <th colspan="7" style="text-align: center;">6.2 Folding Machine settling as per SOP No VAP/SOP/PDL/005</th>
              </tr>
              <tr>
                <td colspan=""></td>
                <td colspan="2">I</td>
                <td colspan="2">II</td>
                <td colspan="2">III</td>

              </tr>
              <tr>
                <td >Machine No</td>
                <td colspan="2"><input type="text" value="<?php echo $machine1; ?>" id="machine1" name="machine1"></td>
                <td colspan="2"><input type="text" value="<?php echo $machine2; ?>" id="machine2" name="machine2"></td>
                <td colspan="2"><input type="text" value="<?php echo $machine3; ?>" id="machine3" name="machine3"></td>
              </tr>
              <tr>
               <td>Operator</td>
                <td colspan="2"><input type="text" value="<?php echo $operator1; ?>" id="operator1" name="operator1"></td>
                <td colspan="2"><input type="text" value="<?php echo $operator2; ?>" id="operator2" name="operator2"></td>
                <td colspan="2"><input type="text" value="<?php echo $operator3; ?>" id="operator3" name="operator3"></td>
              </tr>
              <tr>
           <td>Team </td>
                <td colspan="2"><input type="text" value="<?php echo $team1; ?>" id="team1" name="team1"></td>
                <td colspan="2"><input type="text" value="<?php echo $team2; ?>" id="team2" name="team2"></td>
                <td colspan="2"><input type="text" value="<?php echo $team3; ?>" id="team3" name="team3"></td>
              </tr>
                
              <tr>
                <td>Start Date End date</td>
                <td><input type="date" value="<?php echo $start_date1; ?>" id="start_date1" name="start_date1"></td>
                <td><input type="date" value="<?php echo $start_date2; ?>" id="start_date2" name="start_date2"></td>
                <td><input type="date" value="<?php echo $start_date3; ?>" id="start_date3" name="start_date3"></td>
                <td><input type="date" value="<?php echo $start_date4; ?>" id="start_date4" name="start_date4"></td>
                <td><input type="date" value="<?php echo $start_date5; ?>" id="start_date5" name="start_date5"></td>
                <td><input type="date" value="<?php echo $start_date6; ?>" id="start_date6" name="start_date6"></td>

              </tr>
              <tr>
                <td>Start time End time</td>
                <td><input type="time" value="<?php echo $start_time1; ?>" id="start_time1" name="start_time1"></td>
                <td><input type="time" value="<?php echo $start_time2; ?>" id="start_time2" name="start_time2"></td>
                <td><input type="time" value="<?php echo $start_time3; ?>" id="start_time3" name="start_time3"></td>
                <td><input type="time" value="<?php echo $start_time4; ?>" id="start_time4" name="start_time4"></td>
                <td><input type="time" value="<?php echo $start_time5; ?>" id="start_time5" name="start_time5"></td>
                <td><input type="time" value="<?php echo $start_time6; ?>" id="start_time6" name="start_time6"></td>

              </tr>


            </table>

         <br>
           <table style="width:100%;">
                 
                  <tr>
                    <td rowspan="2">6.3 Job Approved Details</td>
                    <td colspan="3">Done by production</td>
                    <td colspan="3">Check by Plant Manager</td>
                    <td colspan="3">Approved by QC</td>

                  </tr>
                  <tr>
                    <td >I</td>
                    <td >II</td>
                    <td >III</td>
                    <td >I</td>
                    <td >II</td>
                    <td >III</td>
                    <td >I</td>
                    <td >II</td>
                    <td >III</td>

                  </tr>
                  <tr>
                    <td>Leaflet Scanning</td>
                    <td rowspan="9" ><input type="text" value="<?php echo $Leaflet1; ?>" id="Leaflet1" name="Leaflet1" style="width: 80px;"></td>
                    <td rowspan="9" ><input type="text" value="<?php echo $Leaflet2; ?>" id="Leaflet2" name="Leaflet2" style="width: 80px;"></td>
                    <td rowspan="9"><input type="text" value="<?php echo $Leaflet3; ?>" id="Leaflet3" name="Leaflet3" style="width: 80px;"></td>
                    <td rowspan="9"><input type="text" value="<?php echo $Leaflet4; ?>" id="Leaflet4" name="Leaflet4" style="width: 80px;"></td>
                    <td rowspan="9"><input type="text" value="<?php echo $Leaflet5; ?>" id="Leaflet5" name="Leaflet5" style="width: 80px;"></td>
                    <td rowspan="9"><input type="text" value="<?php echo $Leaflet6; ?>" id="Leaflet6" name="Leaflet6" style="width: 80px;"></td>
                    <td rowspan="9"><input type="text" value="<?php echo $Leaflet7; ?>" id="Leaflet7" name="Leaflet7" style="width: 80px;"></td>
                    <td rowspan="9"><input type="text" value="<?php echo $Leaflet8; ?>" id="Leaflet8" name="Leaflet8" style="width: 80px;"></td>
                    <td rowspan="9"><input type="text" value="<?php echo $Leaflet9; ?>" id="Leaflet9" name="Leaflet9" style="width: 80px;"></td>

                  </tr>
                
                 
                 <tr>
                  <td>
                    No. of Folds 
                 </td>
               </tr>
                <tr>
                  <td>
                   Folding Size
                 </td>
               </tr>
                <tr>
                  <td>
                    Gluing 
                 </td>
               </tr>
                <tr>
                  <td>
                    No of Leaflet / packet displayed on machine 
                 </td>
               </tr>
                <tr>
                  <td>
                   No. of Packets in box 
                 </td>
               </tr>
               <tr>
                  <td>
                   Packing Labelling
                 </td>
               </tr>
               <tr>
                  <td>
                  Box Labelling 
                 </td>
               </tr>
               <tr>
                  <td>
                  Product name label with Pharma code 
                 </td>
               </tr>
             </table>
             <br>

            <table style="width:100%;">
              <tr>
                <td colspan="6">6.4 Rejection During Leaflet Folding</td>
              </tr>
              <tr>
                <td >date</td>
                <td >Qty issued for Leaflet Folding</td>
                <td >Rejection</td>
                <td >Qty Released for Dispatch</td>
                <td >Signiture</td>

              </tr>
           
              <tr>
              <td><input type="date" value="<?php echo $stage5_date; ?>" id="stage5_date" name="stage5_date"></td>
              <td><input type="text" value="<?php echo $stage5_qty_issued; ?>" id="stage5_qty_issued" name="stage5_qty_issued"></td>
              <td><input type="text" value="<?php echo $stage5_Rejection; ?>" id="stage5_Rejection" name="stage5_Rejection"></td>
               <td><input type="text" value="<?php echo $stage5_released; ?>" id="stage5_released" name="stage5_released"></td>
              <td><input type="text" value="<?php echo $stage5_sign; ?>" id="stage5_sign" name="stage5_sign"></td>
            </tr>
            <tr>
              <td rowspan="2" colspan="2">Remark: <input type="text" value="<?php echo $stage5_remark; ?>" id="stage5_remark" name="stage5_remark"></td>
              <td rowspan="2">Approval</td>
               <td><input type="text" value="<?php echo $stage5_approved1; ?>" id="stage5_approved1" name="stage5_approved1"></td>
                 <td><input type="text" value="<?php echo $stage5_approved2; ?>" id="stage5_approved2" name="stage5_approved2"></td>
            </tr>
              <tr>
             
               <td>QC</td>
                 <td>QA</td>
            </tr>

            </table>



            <button type="button" class="btn btn-primary" id="save">Save changes</button>
             <a href="add4stage.php?id=<?php echo $_GET['id'];?>">    <button type="button" class="btn btn-success" id="save">ADD Process Quality Check</button></a>
          </form>

        </div>



        <!-- /.card-body -->

      </div>

    </div>

  </div>

  <!-- /.container-fluid -->

</section>




<!-- /.content -->

</div>




<!-- /.content-wrapper -->

<?php require '../footer.php'; ?>



<!-- Control Sidebar -->

<aside class="control-sidebar control-sidebar-dark">

  <!-- Control sidebar content goes here -->

</aside>

<!-- /.control-sidebar -->

</div>

<!-- ./wrapper -->



<!-- jQuery -->

<script src="../plugins/jquery/jquery.min.js"></script>

<!-- Bootstrap 4 -->

<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Select2 -->

<script src="../plugins/select2/js/select2.full.min.js"></script>

<!-- Bootstrap4 Duallistbox -->

<script src="../plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>

<!-- InputMask -->

<script src="../plugins/moment/moment.min.js"></script>

<script src="../plugins/inputmask/jquery.inputmask.min.js"></script>

<!-- date-range-picker -->

<script src="../plugins/daterangepicker/daterangepicker.js"></script>

<!-- bootstrap color picker -->

<script src="../plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>

<!-- Tempusdominus Bootstrap 4 -->

<script src="../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>

<!-- Bootstrap Switch -->

<script src="../plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>

<!-- BS-Stepper -->

<script src="../plugins/bs-stepper/js/bs-stepper.min.js"></script>

<!-- dropzonejs -->

<script src="../plugins/dropzone/min/dropzone.min.js"></script>

<!-- AdminLTE App -->

<script src="../dist/js/adminlte.min.js"></script>

<!-- AdminLTE for demo purposes -->

<script src="../dist/js/demo.js"></script>



<script src="../plugins/datatables/jquery.dataTables.min.js"></script>

<script src="../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>

<script src="../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>

<script src="../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>

<script src="../plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>

<script src="../plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>

<script src="../plugins/jszip/jszip.min.js"></script>

<script src="../plugins/pdfmake/pdfmake.min.js"></script>

<script src="../plugins/pdfmake/vfs_fonts.js"></script>

<script src="../plugins/datatables-buttons/js/buttons.html5.min.js"></script>

<script src="../plugins/datatables-buttons/js/buttons.print.min.js"></script>

<script src="../plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

<!-- Page specific script -->

<script>


  $("#stage5_Rejection").blur(function(){

    var total = $('#stage5_qty_issued').val()-$('#stage5_Rejection').val();

    $('#stage5_released').val(total.toFixed(2));


  });

 






  $(function () {

    $("#example1").DataTable({

      "responsive": true, "lengthChange": false, "autoWidth": false

    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');

    $('#example2').DataTable({

      "paging": true,

      "lengthChange": false,

      "searching": false,

      "ordering": true,

      "info": true,

      "autoWidth": false,

      "responsive": true,

    });

  });


$("#p_name2").keyup(function(){
    var x =$("#p_name2").val();
    if (x=='NA' || x=='na') {
      $("#p_batch2").val('NA');
      $("#p_code2").val('NA');
      $("#p_machine2").val('NA');
      $("#p_date2").val('0001-01-01');
      $("#p_time2").val('00:00');
      $("#Folding4").val('NA');
      $("#Folding5").val('NA');
      $("#Folding6").val('NA');
       $("#machine2").val('NA');
      $("#operator2").val('NA');
      $("#team2").val('NA');
      
      $("#start_date3").val('0001-01-01');
      $("#start_date4").val('0001-01-01');
      $("#start_time3").val('00:00');
      $("#start_time4").val('00:00');
      $("#Leaflet4").val('NA');
      $("#Leaflet5").val('NA');
      $("#Leaflet6").val('NA');

    }
  });

  $("#p_name3").keyup(function(){
    var y =$("#p_name3").val();
    if (y=='NA' || y=='na') {
     $("#p_batch3").val('NA');
      $("#p_code3").val('NA');
      $("#p_machine3").val('NA');
      $("#p_date3").val('0001-01-01');
      $("#p_time3").val('00:00');
      $("#Folding7").val('NA');
      $("#Folding8").val('NA');
      $("#Folding9").val('NA');
      $("#machine3").val('NA');
      $("#operator3").val('NA');
      $("#team3").val('NA');
   
      $("#start_date5").val('0001-01-01');
      $("#start_date6").val('0001-01-01');
      $("#start_time5").val('00:00');
      $("#start_time6").val('00:00');
      $("#Leaflet7").val('NA');
      $("#Leaflet8").val('NA');
      $("#Leaflet9").val('NA');
    }

  });




  $("#save").click(function(){

    var stage5_date= $("#stage5_date").val();
    var p_name1 =$("#p_name1").val();
    var p_batch1 =$("#p_batch1").val();
    var p_code1 =$("#p_code1").val();
    var p_machine1 =$("#p_machine1").val();
    var p_date1 =$("#p_date1").val();
    var p_time1 =$("#p_time1").val();
    var Folding1 =$("#Folding1").val();
    var Folding2 =$("#Folding4").val();
    var Folding3 =$("#Folding7").val();
    var machine1 =$("#machine1").val();
    var operator1 =$("#operator1").val();
    var team1 =$("#team1").val();
    var start_date1 =$("#start_date1").val();
    var start_date2 =$("#start_date2").val();
    var start_time1 =$("#start_time1").val();
    var start_time2 =$("#start_time2").val();
    var Leaflet1 =$("#Leaflet1").val();
    var Leaflet2 =$("#Leaflet2").val();
    var Leaflet3 =$("#Leaflet3").val();

 var stage3_date= $("#stage1_date").val();
    var p_name2 =$("#p_name1").val();
    var p_batch2 =$("#p_batch1").val();
    var p_code2 =$("#p_code1").val();
    var p_machine2 =$("#p_machine1").val();
    var p_date2 =$("#p_date1").val();
    var p_time2 =$("#p_time1").val();
    var Folding4 =$("#Folding2").val();
    var Folding5 =$("#Folding5").val();
    var Folding6 =$("#Folding8").val();
    var machine2 =$("#machine1").val();
    var operator2 =$("#operator1").val();
    var team2 =$("#team1").val();
    var start_date3 =$("#start_date3").val();
    var start_date4 =$("#start_date4").val();
    var start_time3 =$("#start_time3").val();
    var start_time4 =$("#start_time4").val();
    var Leaflet4 =$("#Leaflet4").val();
    var Leaflet5 =$("#Leaflet5").val();
    var Leaflet6 =$("#Leaflet6").val();

    var stage3_date= $("#stage1_date").val();
    var p_name3 =$("#p_name3").val();
    var p_batch3 =$("#p_batch3").val();
    var p_code3 =$("#p_code3").val();
    var p_machine3 =$("#p_machine3").val();
    var p_date3 =$("#p_date3").val();
    var p_time3 =$("#p_time3").val();
    var Folding7 =$("#Folding3").val();
    var Folding8 =$("#Folding6").val();
    var Folding9 =$("#Folding9").val();
    var machine3 =$("#machine3").val();
    var operator3 =$("#operator3").val();
    var team3 =$("#team3").val();
    var start_date5 =$("#start_date1").val();
    var start_date6 =$("#start_date2").val();
    var start_time5 =$("#start_time1").val();
    var start_time6 =$("#start_time2").val();
    var Leaflet7 =$("#Leaflet7").val();
    var Leaflet8 =$("#Leaflet8").val();
    var Leaflet9 =$("#Leaflet9").val();


    if (p_name1=='') {
     alert("enter Previous Job Name");
   }
   else if (p_batch1=='') {
    alert("enter Previous Job Batch No");
  }
  else if (p_code1=='') {
    alert("enter Previous Job Code No");
  }
  else if (p_machine1=='') {
   alert("enter Machine Name");
 }
 else if (p_date1=='') {
   alert("enter Date");
 }
 else if (p_time1=='') {
  alert("enter Time");
}
else if (Folding1=='') {
  alert("enter Done by Production 1");
}
else if (Folding2=='') {
  alert ("enter Check by Plant Manager 1")
}
else if (Folding3=='') {
  alert("enter Approved by QC 1");
}
else if (machine1=='') {
  alert("enter Printing Machine No.");
}
else if (operator1=='') {
  alert("enter Printing Machine Operator.");
}
else if (team1=='') {
  alert("enter Printing Machine Team.");
}
else if (start_date1=='') {
  alert("enter Printing Machine Start Date.");
}
else if (start_date2=='') {
  alert("enter Printing Machine End Date.");
}
else if (start_time1=='') {
  alert("enter Printing Machine Start time.");
}
else if (start_time2=='') {
  alert("enter Printing Machine End time.");
}
else if (Leaflet1=='') {
  alert("enter Job Approval Details Done by production");
}
else if (Leaflet2=='') {
  alert("enter Job Approval Details Check by Plant Manager");
}
else if (Leaflet3=='') {
  alert("enter Job Approval Details Approved by QC");
}
else if (stage3_date=='') {
  alert("please enter Date");
}

else if (p_name2=='') {
 alert("enter Previous Job Name");
}
else if (p_batch2=='') {
  alert("enter Previous Job Batch No");
}
else if (p_code2=='') {
  alert("enter Previous Job Code No");
}
else if (p_machine2=='') {
 alert("enter Machine Name");
}
// else if (p_date2=='') {
//  alert("enter Date");
// }
// else if (p_time2=='') {
//   alert("enter Time");
// }
else if (Folding4=='') {
  alert("enter Done by Production 2");
}
else if (Folding5=='') {
  alert ("enter Check by Plant Manager 2 ")
}
else if (Folding6=='') {
  alert("enter Approved by QC 2");
}
else if (machine2=='') {
  alert("enter Printing Machine No.");
}
else if (operator2=='') {
  alert("enter Printing Machine Operator.");
}
else if (team2=='') {
  alert("enter Printing Machine Team.");
}
// else if (start_date3=='') {
//   alert("enter Printing Machine Start Date.");
// }
// else if (start_date4=='') {
//   alert("enter Printing Machine End Date.");
// }
// else if (start_time3=='') {
//   alert("enter Printing Machine Start time.");
// }
// else if (start_time4=='') {
//   alert("enter Printing Machine End time.");
// }
else if (Leaflet4=='') {
  alert("enter Job Approval Details Done by production");
}
else if (Leaflet5=='') {
  alert("enter Job Approval Details Check by Plant Manager");
}
else if (Leaflet6=='') {
  alert("enter Job Approval Details Approved by QC");
}

else if (p_name3=='') {
 alert("enter Previous Job Name");
}
else if (p_batch3=='') {
  alert("enter Previous Job Batch No");
}
else if (p_code3=='') {
  alert("enter Previous Job Code No");
}
else if (p_machine3=='') {
 alert("enter Machine Name");
}
// else if (p_date3=='') {
//  alert("enter Date");
// }
// else if (p_time3=='') {
//   alert("enter Time");
// }
else if (Folding7=='') {
  alert("enter Done by Production 3");
}
else if (Folding8=='') {
  alert ("enter Check by Plant Manager 3")
}
else if (Folding9=='') {
  alert("enter Approved by QC 3");
}
else if (machine3=='') {
  alert("enter Printing Machine No.");
}
else if (operator3=='') {
  alert("enter Printing Machine Operator.");
}
else if (team3=='') {
  alert("enter Printing Machine Team.");
}
// else if (start_date5=='') {
//   alert("enter Printing Machine Start Date.");
// }
// else if (start_date6=='') {
//   alert("enter Printing Machine End Date.");
// }
// else if (start_time5=='') {
//   alert("enter Printing Machine Start time.");
// }
// else if (start_time6=='') {
//   alert("enter Printing Machine End time.");
// }
else if (Leaflet7=='') {
  alert("enter Job Approval Details Done by production");
}
else if (Leaflet8=='') {
  alert("enter Job Approval Details Check by Plant Manager");
}
else if (Leaflet9=='') {
  alert("enter Job Approval Details Approved by QC");
}
    else{
     $.ajax({

       url: 'insert-stage6.php',

       type: 'POST',

       dataType: 'json',

       data: $('#form1').serialize(),

       success:function(res){

         if (res==1) {

          alert("Sucessfully Added");

          window.location.reload();

        }

        else{

          alert("error");

        }



      }

    })
   }



 })



</script>

</body>

</html>

