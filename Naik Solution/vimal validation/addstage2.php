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


$sql1 = 'SELECT * FROM stage2 where j_id="'.$_GET['id'].'"';

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
    $p_machin1= $row1['p_machin1'];
    $p_machin2= $row1['p_machin2'];
    $p_machin3= $row1['p_machin3'];
    $p_date1= $row1['p_date1'];
    $p_time1= $row1['p_time1'];
    $p_date2= $row1['p_date2'];
    $p_time2= $row1['p_time2'];
    $p_date3= $row1['p_date3'];
    $p_time3= $row1['p_time3'];
    $pro_mac1= $row1['pro_mac1'];
    $pro_mac2= $row1['pro_mac2'];
    $pro_mac3= $row1['pro_mac3'];
    $pro_mac4= $row1['pro_mac4'];
    $pro_mac5= $row1['pro_mac5'];
    $pro_mac6= $row1['pro_mac6'];
    $pro_mac7= $row1['pro_mac7'];
    $pro_mac8= $row1['pro_mac8'];
    $pro_mac9= $row1['pro_mac9'];
    $Machine1= $row1['Machine1'];
    $Machine2= $row1['Machine2'];
    $Machine3= $row1['Machine3'];
    $Operator1= $row1['Operator1'];
    $Operator2= $row1['Operator2'];
    $Operator3= $row1['Operator3'];
    $Team1= $row1['Team1'];
    $Team2= $row1['Team2'];
    $Team3= $row1['Team3'];
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
    $Matter1= $row1['Matter1'];
    $Matter2= $row1['Matter2'];
    $Matter3= $row1['Matter3'];
    $Matter4= $row1['Matter4'];
    $Matter5= $row1['Matter5'];
    $Matter6= $row1['Matter6'];
    $Matter7= $row1['Matter7'];
    $Matter8= $row1['Matter8'];
    $Matter9= $row1['Matter9'];
    $stage1_date= $row1['stage1_date'];
    $stage1_qty_issued= $row1['stage1_qty_issued'];
    $stage1_printing= $row1['stage1_printing'];
    $stage1_plain= $row1['stage1_plain'];
    $stage1_released= $row1['stage1_released'];
    $stage1_sign= $row1['stage1_sign'];
    $stage1_remark= $row1['stage1_remark'];
    $stage1_approved1= $row1['stage1_approved1'];
    $stage1_approved2= $row1['stage1_approved2'];


  }

}else{

  $p_name1= "";
  $p_name2= "";
  $p_name3= "";
  $p_batch1= "";
  $p_batch2= "";
  $p_batch3= "";
  $p_code1= "";
  $p_code2= "";
  $p_code3= "";
  $p_machin1= "";
  $p_machin2= "";
  $p_machin3= "";
  $p_date1= "";
  $p_time1= "";
  $p_date2= "";
  $p_time2= "";
  $p_date3= "";
  $p_time3= "";
  $pro_mac1= "";
  $pro_mac2= "";
  $pro_mac3= "";
  $pro_mac4= "";
  $pro_mac5= "";
  $pro_mac6= "";
  $pro_mac7= "";
  $pro_mac8= "";
  $pro_mac9= "";
  $Machine1= "";
  $Machine2= "";
  $Machine3= "";
  $Operator1= "";
  $Operator2= "";
  $Operator3= "";
  $Team1= "";
  $Team2= "";
  $Team3= "";
  $start_date1= "";
  $start_date2= "";
  $start_date3= "";
  $start_date4= "";
  $start_date5= "";
  $start_date6= "";
  $start_time1= "";
  $start_time2= "";
  $start_time3= "";
  $start_time4= "";
  $start_time5= "";
  $start_time6= "";
  $Matter1= "";
  $Matter2= "";
  $Matter3= "";
  $Matter4= "";
  $Matter5= "";
  $Matter6= "";
  $Matter7= "";
  $Matter8= "";
  $Matter9= "";
  $stage1_date= "";
  $stage1_qty_issued= "";
  $stage1_printing= "";
  $stage1_plain= "";
  $stage1_released= "";
  $stage1_sign= "";
  $stage1_remark= "";
  $stage1_approved1= "";
  $stage1_approved2= "";

  $sql2 = 'SELECT * FROM stage11 where j_id="'.$_GET['id'].'"';

  $statement2 = $conn->query($sql2);

  $publishers2 = $statement2->fetchAll(PDO::FETCH_ASSOC);

  if ($publishers2) {

    foreach ($publishers2 as $row2) {

      $stage1_qty_issued= $row2['b_issued'];
    }
  }


}


?>

<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Abc | Offset Printing Machine 2.0</title>



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

              <li class="breadcrumb-item active">Offset Printing Machine</li>

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

            <h3 class="card-title">Offset Printing Machine</h3>

          </div>

          <div class="card-body" style="background: lightgray;">

            <form id="form1">
              <input type="hidden" value="<?php echo $_GET['id']; ?>" name="j_id" id="j_id">

              <input type="hidden" value="<?php echo $cnou; ?>" name="cnou" id="cnou">

              <table style="width:100%;">
                <tr>
                  <td colspan="2">2.1 Line Clearance</td>
                  <td colspan="2">I</td>
                  <td colspan="2">II</td>
                  <td colspan="2">III</td>

                </tr>
                <tr>
                 <td rowspan="3">Previous job</td>
                 <td >Name</td>
                 <td colspan="2"><input type="text" value="<?php echo $p_name1; ?>" id="p_name1" name="p_name1"> </td>
                 <td colspan="2"><input type="text" value="<?php echo $p_name2; ?>" id="p_name2" name="p_name2" style="text-transform: uppercase;"> </td>
                 <td colspan="2"><input type="text" value="<?php echo $p_name3; ?>" id="p_name3" name="p_name3"  style="text-transform: uppercase;" > </td>

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

                <td colspan="2">Machin Name</td>
                <td colspan="2"><input type="text" value="<?php echo $p_machin1; ?>" id="p_machin1" name="p_machin1"> </td>
                <td colspan="2"><input type="text" value="<?php echo $p_machin2; ?>" id="p_machin2" name="p_machin2"> </td>
                <td colspan="2"><input type="text" value="<?php echo $p_machin3; ?>" id="p_machin3" name="p_machin3"> </td>

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
            <table style="width:100%;">
              <tr>
                <td colspan="12">.</td>
              </tr>
              <tr>
                <td rowspan="2">Parameters to be checked before</td>
                <td colspan="3">Done by Production</td>
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
                <td>Printing Machine Fidder Pile</td>
                <td rowspan="8" ><input type="text" value="<?php echo $pro_mac1; ?>" id="pro_mac1" name="pro_mac1" style="width: 80px;"></td>
                <td rowspan="8" ><input type="text" value="<?php echo $pro_mac2; ?>" id="pro_mac2" name="pro_mac2" style="width: 80px;"></td>
                <td rowspan="8"><input type="text" value="<?php echo $pro_mac3; ?>" id="pro_mac3" name="pro_mac3" style="width: 80px;"></td>
                <td rowspan="8"><input type="text" value="<?php echo $pro_mac4; ?>" id="pro_mac4" name="pro_mac4" style="width: 80px;"></td>
                <td rowspan="8"><input type="text" value="<?php echo $pro_mac5; ?>" id="pro_mac5" name="pro_mac5" style="width: 80px;"></td>
                <td rowspan="8"><input type="text" value="<?php echo $pro_mac6; ?>" id="pro_mac6" name="pro_mac6" style="width: 80px;"></td>
                <td rowspan="8"><input type="text" value="<?php echo $pro_mac7; ?>" id="pro_mac7" name="pro_mac7" style="width: 80px;"></td>
                <td rowspan="8"><input type="text" value="<?php echo $pro_mac8; ?>" id="pro_mac8" name="pro_mac8" style="width: 80px;"></td>
                <td rowspan="8"><input type="text" value="<?php echo $pro_mac9; ?>" id="pro_mac9" name="pro_mac9" style="width: 80px;"></td>

              </tr>
              <tr>
                <td>Machine Delivery Pile</td>
              </tr>
              <tr>
                <td>Under Equpment</td>
              </tr>
              <tr>
                <td>Area Cleanliness</td>
              </tr>
              <tr>
                <td>Pallets / Creates used for Production</td>
              </tr>
              <tr>
                <td>
                  Plate Removal of Previous Job
                </td>
              </tr>
              <tr>
                <td>
                 Rrint Checking Console Area
               </td>
             </tr>
             <tr>
              <td>
               Drawers / Tables / Storage boxes
             </td>
           </tr>
         </table>

         <table style="width:100%;">
          <tr>
            <th colspan="7" style="text-align: center;">Printing Machine setting as per SOP No. VAP/SOP/PDL/001</th>
          </tr>
          <tr>
            <td colspan="">Job Start Details</td>
            <td colspan="2">I</td>
            <td colspan="2">II</td>
            <td colspan="2">III</td>

          </tr>
          <tr>
            <td>Machine No.</td>
            <td colspan="2"><input type="text" value="<?php echo $Machine1; ?>" id="Machine1" name="Machine1"></td>
            <td colspan="2"><input type="text" value="<?php echo $Machine2; ?>" id="Machine2" name="Machine2"></td>
            <td colspan="2"><input type="text" value="<?php echo $Machine3; ?>" id="Machine3" name="Machine3"></td>
          </tr>
          <tr>
            <td>Operator </td>
            <td colspan="2"><input type="text" value="<?php echo $Operator1; ?>" id="Operator1" name="Operator1"></td>
            <td colspan="2"><input type="text" value="<?php echo $Operator2; ?>" id="Operator2" name="Operator2"></td>
            <td colspan="2"><input type="text" value="<?php echo $Operator3; ?>" id="Operator3" name="Operator3"></td>
          </tr>
          <tr>
            <td>Team </td>
            <td colspan="2"><input type="text" value="<?php echo $Team1; ?>" id="Team1" name="Team1"></td>
            <td colspan="2"><input type="text" value="<?php echo $Team2; ?>" id="Team2" name="Team2"></td>
            <td colspan="2"><input type="text" value="<?php echo $Team3; ?>" id="Team3" name="Team3"></td>
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

        <table style="width:100%;">
          <tr>
            <td colspan="12">.</td>
          </tr>
          <tr>
            <td rowspan="2">2.4 Job Approval Details</td>
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
            <td>Text Matter & Layout with Approved Card</td>
            <td rowspan="4" ><input type="text" value="<?php echo $Matter1; ?>" id="Matter1" name="Matter1" style="width: 80px;"></td>
            <td rowspan="4" ><input type="text" value="<?php echo $Matter2; ?>" id="Matter2" name="Matter2" style="width: 80px;"></td>
            <td rowspan="4"><input type="text" value="<?php echo $Matter3; ?>" id="Matter3" name="Matter3" style="width: 80px;"></td>
            <td rowspan="4"><input type="text" value="<?php echo $Matter4; ?>" id="Matter4" name="Matter4" style="width: 80px;"></td>
            <td rowspan="4"><input type="text" value="<?php echo $Matter5; ?>" id="Matter5" name="Matter5" style="width: 80px;"></td>
            <td rowspan="4"><input type="text" value="<?php echo $Matter6; ?>" id="Matter6" name="Matter6" style="width: 80px;"></td>
            <td rowspan="4"><input type="text" value="<?php echo $Matter7; ?>" id="Matter7" name="Matter7" style="width: 80px;"></td>
            <td rowspan="4"><input type="text" value="<?php echo $Matter8; ?>" id="Matter8" name="Matter8" style="width: 80px;"></td>
            <td rowspan="4"><input type="text" value="<?php echo $Matter9; ?>" id="Matter9" name="Matter9" style="width: 80px;"></td>

          </tr>
          <tr>
            <td>Plate checked with Positives</td>
          </tr>
          <tr>
            <td>Text Matter & Layout with Positives</td>
          </tr>
          <tr>
            <td>Registration Check</td>
          </tr>
          <tr>
            <td>Sheet Checked with Inspector</td>
            <td colspan="6">NA</td>
            <td></td>
            <td></td>
          </tr>

        </table>

        <table style="width:100%;">
          <tr>
            <td colspan="6">2.4 Rejection During Printing</td>
          </tr>
          <tr>
            <td rowspan="2">date</td>
            <td rowspan="2">Qty issued for printing</td>
            <td colspan="2">Rejection</td>
            <td rowspan="2">Qty Released for Sorting/Cutting</td>
            <td rowspan="2">Signiture</td>

          </tr>
          <tr>
            <td>Printing</td>
            <td>Plain</td>
          </tr>
          <tr>
            <td><input type="date" value="<?php echo $stage1_date; ?>" id="stage1_date" name="stage1_date"></td>
            <td><input type="text" value="<?php echo $stage1_qty_issued; ?>" id="stage1_qty_issued" name="stage1_qty_issued"></td>
            <td><input type="text" value="<?php echo $stage1_printing; ?>" id="stage1_printing" name="stage1_printing"></td>
            <td><input type="text" value="<?php echo $stage1_plain; ?>" id="stage1_plain" name="stage1_plain"></td>
            <td><input type="text" value="<?php echo $stage1_released; ?>" id="stage1_released" name="stage1_released"></td>
            <td><input type="text" value="<?php echo $stage1_sign; ?>" id="stage1_sign" name="stage1_sign"></td>
          </tr>
          <tr>
            <td rowspan="2" colspan="3">Remark: <select id="stage1_remark" name="stage1_remark">
              <option value=""></option>
              <option value="Released for Sorting">Released for Sorting</option>
              <option value="Released for Cutting">Released for Cutting</option>
            </select>

          </td>
          <td rowspan="2">Approval</td>
          <td><input type="text" value="<?php echo $stage1_approved1; ?>" id="stage1_approved1" name="stage1_approved1"></td>
          <td><input type="text" value="<?php echo $stage1_approved2; ?>" id="stage1_approved2" name="stage1_approved2"></td>
        </tr>
        <tr>

         <td>QC</td>
         <td>QA</td>
       </tr>

     </table>



     <button type="button" class="btn btn-primary" id="save">Save changes</button>
     <a href="addstage.php?id=<?php echo $_GET['id'];?>">    <button type="button" class="btn btn-success" id="save">ADD Process Quality Check</button></a>
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

  $("#stage1_plain").blur(function(){

    var stage1_qty_issued = parseFloat($('#stage1_qty_issued').val());
    var stage1_printing = parseFloat($('#stage1_printing').val());
    var stage1_plain = parseFloat($('#stage1_plain').val());

    var total = stage1_qty_issued-(stage1_printing + stage1_plain);

    $('#stage1_released').val(total.toFixed(2));


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
      $("#p_machin2").val('NA');
      $("#p_date2").val('0001-01-01');
      $("#p_time2").val('00:00');
      $("#pro_mac2").val('NA');
      $("#pro_mac5").val('NA');
      $("#pro_mac8").val('NA');
      $("#Machine2").val('NA');
      $("#Operator2").val('NA');
      $("#Team2").val('NA');
      $("#start_date2").val('0001-01-01');
      $("#start_date3").val('0001-01-01');
      $("#start_time2").val('00:00');
      $("#start_time3").val('00:00');
      $("#Matter2").val('NA');
      $("#Matter5").val('NA');
      $("#Matter8").val('NA');
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
      $("#pro_mac3").val('NA');
      $("#pro_mac6").val('NA');
      $("#pro_mac9").val('NA');
      $("#Machine3").val('NA');
      $("#Operator3").val('NA');
      $("#Team3").val('NA');
      $("#start_date3").val('0001-01-01');
      $("#start_date4").val('0001-01-01');
      $("#start_time3").val('00:00'0001-01-01
      $("#start_time4").val('00:00');
      $("#Matter3").val('NA');
      $("#Matter6").val('NA');
      $("#Matter9").val('NA');
    }

  });


   $("#save").click(function(){

    var stage1_date= $("#stage1_date").val();
    var p_name1 =$("#p_name1").val();
    var p_batch1 =$("#p_batch1").val();
    var p_code1 =$("#p_code1").val();
    var p_machine1 =$("#p_machine1").val();
    var p_date1 =$("#p_date1").val();
    var p_time1 =$("#p_time1").val();
    var pro_mac1 =$("#pro_mac1").val();
    var pro_mac4 =$("#pro_mac4").val();
    var pro_mac7 =$("#pro_mac7").val();
    var Machine1 =$("#Machine1").val();
    var Operator1 =$("#Operator1").val();
    var Team1 =$("#Team1").val();
    var start_date1 =$("#start_date1").val();
    var start_date2 =$("#start_date2").val();
    var start_time1 =$("#start_time1").val();
    var start_time2 =$("#start_time2").val();
    var Matter1 =$("#Matter1").val();
    var Matter4 =$("#Matter4").val();
    var Matter7 =$("#Matter7").val();


    var p_name2 =$("#p_name2").val();
    var p_batch2 =$("#p_batch2").val();
    var p_cod2 =$("#p_code2").val();
    var p_machine2 =$("#p_machine2").val();
    var p_date2 =$("#p_date2").val();
    var p_time2 =$("#p_time2").val();
    var pro_mac2 =$("#pro_mac2").val();
    var pro_mac5 =$("#pro_mac5").val();
    var pro_mac8 =$("#pro_mac8").val();
    var Machine2 =$("#Machine2").val();
    var Operator2 =$("#Operator2").val();
    var Team2 =$("#Team2").val();
    var start_date2 =$("#start_date2").val();
    var start_date3 =$("#start_date3").val();
    var start_time2 =$("#start_time2").val();
    var start_time3 =$("#start_time3").val();
    var Matter2 =$("#Matter2").val();
    var Matter5 =$("#Matter5").val();
    var Matter8 =$("#Matter8").val();



   
    var p_name3 =$("#p_name3").val();
    var p_batch3 =$("#p_batch3").val();
    var p_code3 =$("#p_code3").val();
    var p_machine3 =$("#p_machine3").val();
    var p_date3 =$("#p_date3").val();
    var p_time3 =$("#p_time3").val();
    var pro_mac3 =$("#pro_mac3").val();
    var pro_mac6 =$("#pro_mac6").val();
    var pro_mac9 =$("#pro_mac9").val();
    var Machine3 =$("#Machine3").val();
    var Operator3 =$("#Operator3").val();
    var Team3 =$("#Team3").val();
    var start_date5 =$("#start_date5").val();
    var start_date6 =$("#start_date6").val();
    var start_time5 =$("#start_time5").val();
    var start_time6 =$("#start_time6").val();
    var Matter3 =$("#Matter3").val();
    var Matter6 =$("#Matter6").val();
    var Matter9 =$("#Matter9").val();



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
else if (pro_mac1=='') {
  alert("enter Done by Production 1");
}
else if (pro_mac4=='') {
  alert ("enter Check by Plant Manager 1")
}
else if (pro_mac7=='') {
  alert("enter Approved by QC 1");
}
else if (Machine1=='') {
  alert("enter Printing Machine No.");
}
else if (Operator1=='') {
  alert("enter Printing Machine Operator.");
}
else if (Team1=='') {
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
else if (Matter1=='') {
  alert("enter Job Approval Details Done by production");
}
else if (Matter4=='') {
  alert("enter Job Approval Details Check by Plant Manager");
}
else if (Matter7=='') {
  alert("enter Job Approval Details Approved by QC");
}
else if (stage1_date=='') {
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
else if (p_machin2=='') {
 alert("enter Machine Name");
}
// else if (p_date2=='') {
//  alert("enter Date");
// }
// else if (p_time2=='') {
//   alert("enter Time");
// }
else if (pro_mac2=='') {
  alert("enter Done by Production 2");
}
else if (pro_mac5=='') {
  alert ("enter Check by Plant Manager 2 ")
}
else if (pro_mac8=='') {
  alert("enter Approved by QC 2");
}
else if (Machine2=='') {
  alert("enter Printing Machine No.");
}
else if (Operator2=='') {
  alert("enter Printing Machine Operator.");
}
else if (Team2=='') {
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
else if (Matter2=='') {
  alert("enter Job Approval Details Done by production");
}
else if (Matter5=='') {
  alert("enter Job Approval Details Check by Plant Manager");
}
else if (Matter8=='') {
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
else if (p_machin3=='') {
 alert("enter Machine Name");
}
// else if (p_date3=='') {
//  alert("enter Date");
// }
// else if (p_time3=='') {
//   alert("enter Time");
// }
else if (pro_mac3=='') {
  alert("enter Done by Production 3");
}
else if (pro_mac6=='') {
  alert ("enter Check by Plant Manager 3")
}
else if (pro_mac9=='') {
  alert("enter Approved by QC 3");
}
else if (Machine3=='') {
  alert("enter Printing Machine No.");
}
else if (Operator3=='') {
  alert("enter Printing Machine Operator.");
}
else if (Team3=='') {
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
else if (Matter3=='') {
  alert("enter Job Approval Details Done by production");
}
else if (Matter6=='') {
  alert("enter Job Approval Details Check by Plant Manager");
}
else if (Matter9=='') {
  alert("enter Job Approval Details Approved by QC");
}


else{
 $.ajax({

   url: 'insert-stage2.php',

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


 // function checkEnableNext() {
 //            const textbox1Value = document.getElementById("p_name2").value;
 //            const textbox2 = document.getElementById("p_name3");

 //            if (textbox1Value.trim() !== "") {
 //                textbox2.disabled = false;
 //            } else {
 //                textbox2.disabled = true;
 //                textbox2.value = ""; // Reset the value if disabled
 //            }
 //        }


</script>

</body>

</html>

