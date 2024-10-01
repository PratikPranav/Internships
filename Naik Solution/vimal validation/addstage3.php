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



$sql1 = 'SELECT * FROM stage3 where j_id="'.$_GET['id'].'"';

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
    $p_sorting1= $row1['p_sorting1'];
    $p_sorting2= $row1['p_sorting2'];
    $p_sorting3= $row1['p_sorting3'];
    $p_date1= $row1['p_date1'];
    $p_time1= $row1['p_time1'];
    $p_date2= $row1['p_date2'];
    $p_time2= $row1['p_time2'];
    $p_date3= $row1['p_date3'];
    $p_time3= $row1['p_time3'];
    $area1= $row1['area1'];
    $area2= $row1['area2'];
    $area3= $row1['area3'];
    $area4= $row1['area4'];
    $area5= $row1['area5'];
    $area6= $row1['area6'];
    $area7= $row1['area7'];
    $area8= $row1['area8'];
    $area9= $row1['area9'];
    $sort_1= $row1['sort_1'];
    $sort_2= $row1['sort_2'];
    $sort_3= $row1['sort_3'];
    $sort_11= $row1['sort_11'];
    $sort_21= $row1['sort_21'];
    $sort_31= $row1['sort_31'];
    $sort_12= $row1['sort_12'];
    $sort_22= $row1['sort_22'];
    $sort_32= $row1['sort_32'];
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
    $stage2_date= $row1['stage2_date'];
    $stage2_qty_issued= $row1['stage2_qty_issued'];
    $stage2_Rejection= $row1['stage2_Rejection'];
    $stage2_released= $row1['stage2_released'];
    $stage2_sign= $row1['stage2_sign'];
    $stage2_remark= $row1['stage2_remark'];
    $stage2_approved1= $row1['stage2_approved1'];
    $stage2_approved2= $row1['stage2_approved2'];


  }

}else{

  $p_name1= "";
  $p_name1="";
  $p_name2="";
  $p_name3="";
  $p_batch1="";
  $p_batch2="";
  $p_batch3="";
  $p_code1="";
  $p_code2="";
  $p_code3="";
  $p_sorting1="";
  $p_sorting2="";
  $p_sorting3="";
  $p_date1="";
  $p_time1="";
  $p_date2="";
  $p_time2="";
  $p_date3="";
  $p_time3="";
  $area1="";
  $area2="";
  $area3="";
  $area4="";
  $area5="";
  $area6="";
  $area7="";
  $area8="";
  $area9="";
  $sort_1="";
  $sort_2="";
  $sort_3="";
  $sort_11="";
  $sort_21="";
  $sort_31="";
  $sort_12="";
  $sort_22="";
  $sort_32="";
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
  $stage2_date="";
  $stage2_Rejection="";
  $stage2_released="";
  $stage2_sign="";
  $stage2_remark="";
  $stage2_approved1="";
  $stage2_approved2="";


  $sql2 = 'SELECT * FROM stage2 where j_id="'.$_GET['id'].'"';

  $statement2 = $conn->query($sql2);

  $publishers2 = $statement2->fetchAll(PDO::FETCH_ASSOC);

  if ($publishers2) {

    foreach ($publishers2 as $row2) {

      $stage2_qty_issued= $row2['stage1_released'];
    }
  }


}



?>

<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Abc | Sheet Sorting 3.0</title>



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

                <li class="breadcrumb-item active">Sheet Sorting </li>

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

              <h3 class="card-title">Sheet Sorting </h3>

            </div>

            <div class="card-body" style="background: lightgray;">

              <form id="form1">
                <input type="hidden" value="<?php echo $_GET['id']; ?>" name="j_id" id="j_id">

                <input type="hidden" value="<?php echo $cnou; ?>" name="cnou" id="cnou">

                <table style="width:100%;">
                  <tr>
                    <td colspan="2">3.1 Line Clearance</td>
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

                  <td colspan="2">Sorting Room No.</td>
                  <td colspan="2"><input type="text" value="<?php echo $p_sorting1; ?>" id="p_sorting1" name="p_sorting1"> </td>
                  <td colspan="2"><input type="text" value="<?php echo $p_sorting2; ?>" id="p_sorting2" name="p_sorting2"> </td>
                  <td colspan="2"><input type="text" value="<?php echo $p_sorting3; ?>" id="p_sorting3" name="p_sorting3"> </td>

                </tr>
                <tr>

                  <td colspan="2">Date Time</td>
                  <td ><input type="date" value="<?php echo $p_date1; ?>" id="p_date1" name="p_date1"> </td>
                  <td ><input type="time" value="<?php echo $p_time1;?>" id="p_time1" name="p_time1"> </td>
                  <td ><input type="date" value="<?php echo $p_date2; ?>" id="p_date2" name="p_date2"> </td>
                  <td ><input type="time" value="<?php echo $p_time2;?>" id="p_time2" name="p_time2"> </td>
                  <td ><input type="date" value="<?php echo $p_date3; ?>" id="p_date3" name="p_date3"> </td>
                  <td ><input type="time" value="<?php echo $p_time3;?>" id="p_time3" name="p_time3"> </td>

                </tr>

              </table>
              <br>
              <table style="width:100%;">
                <tr>
                  <td colspan="12" style="text-align: center;">Parameters to be checked before Line Clearance</td>
                </tr>
                <tr>
                  <td rowspan="2"></td>
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
                  <td>Area Cleanliness</td>
                  <td rowspan="2" ><input type="text" value="<?php echo $area1; ?>" id="area1" name="area1" style="width: 80px;"></td>
                  <td rowspan="2" ><input type="text" value="<?php echo $area2; ?>" id="area2" name="area2" style="width: 80px;"></td>
                  <td rowspan="2"><input type="text" value="<?php echo $area3; ?>" id="area3" name="area3" style="width: 80px;"></td>
                  <td rowspan="2"><input type="text" value="<?php echo $area4; ?>" id="area4" name="area4" style="width: 80px;"></td>
                  <td rowspan="2"><input type="text" value="<?php echo $area5; ?>" id="area5" name="area5" style="width: 80px;"></td>
                  <td rowspan="2"><input type="text" value="<?php echo $area6; ?>" id="area6" name="area6" style="width: 80px;"></td>
                  <td rowspan="2"><input type="text" value="<?php echo $area7; ?>" id="area7" name="area7" style="width: 80px;"></td>
                  <td rowspan="2"><input type="text" value="<?php echo $area8; ?>" id="area8" name="area8" style="width: 80px;"></td>
                  <td rowspan="2"><input type="text" value="<?php echo $area9; ?>" id="area9" name="area9" style="width: 80px;"></td>

                </tr>
                <tr>
                  <td>
                   Tables/ Crates / Pallets
                 </td>
               </tr>
             </table>
             <br>
             <table style="width:100%;">
              <tr>
                <th colspan="7" style="text-align: center;">3.2 Sheet Sorting Processing Details</th>
              </tr>
              <tr>
                <td colspan=""></td>
                <td colspan="2">I</td>
                <td colspan="2">II</td>
                <td colspan="2">III</td>

              </tr>
              <tr>
                <td rowspan="3">Sorting Staff</td>
                <td colspan="2"><input type="text" value="<?php echo $sort_1; ?>" id="sort_1" name="sort_1"></td>
                <td colspan="2"><input type="text" value="<?php echo $sort_2; ?>" id="sort_2" name="sort_2"></td>
                <td colspan="2"><input type="text" value="<?php echo $sort_3; ?>" id="sort_3" name="sort_3"></td>
              </tr>
              <tr>

                <td colspan="2"><input type="text" value="<?php echo $sort_11; ?>" id="sort_11" name="sort_11"></td>
                <td colspan="2"><input type="text" value="<?php echo $sort_21; ?>" id="sort_21" name="sort_21"></td>
                <td colspan="2"><input type="text" value="<?php echo $sort_31; ?>" id="sort_31" name="sort_31"></td>
              </tr>
              <tr>

                <td colspan="2"><input type="text" value="<?php echo $sort_12; ?>" id="sort_12" name="sort_12"></td>
                <td colspan="2"><input type="text" value="<?php echo $sort_22; ?>" id="sort_22" name="sort_22"></td>
                <td colspan="2"><input type="text" value="<?php echo $sort_32; ?>" id="sort_32" name="sort_32"></td>
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
                <td><input type="time" value="<?php echo $start_time1;?>" id="start_time1" name="start_time1"></td>
                <td><input type="time" value="<?php echo $start_time2;?>" id="start_time2" name="start_time2"></td>
                <td><input type="time" value="<?php echo $start_time3;?>" id="start_time3" name="start_time3"></td>
                <td><input type="time" value="<?php echo $start_time4;?>" id="start_time4" name="start_time4"></td>
                <td><input type="time" value="<?php echo $start_time5;?>" id="start_time5" name="start_time5"></td>
                <td><input type="time" value="<?php echo $start_time6;?>" id="start_time6" name="start_time6"></td>

              </tr>


            </table>

            <br>

            <table style="width:100%;">
              <tr>
                <td colspan="6">3.3 Rejection During Sorting</td>
              </tr>
              <tr>
                <td >date</td>
                <td >Qty issued for Sorting</td>
                <td >Rejection</td>
                <td >Qty Released for Cutting</td>
                <td >Signiture</td>

              </tr>

              <tr>
                <td><input type="date" value="<?php echo $stage2_date; ?>" id="stage2_date" name="stage2_date"></td>
                <td><input type="text" value="<?php echo $stage2_qty_issued; ?>" id="stage2_qty_issued" name="stage2_qty_issued"></td>
                <td><input type="text" value="<?php echo $stage2_Rejection; ?>" id="stage2_Rejection" name="stage2_Rejection"></td>
                <td><input type="text" value="<?php echo $stage2_released; ?>" id="stage2_released" name="stage2_released"></td>
                <td><input type="text" value="<?php echo $stage2_sign; ?>" id="stage2_sign" name="stage2_sign"></td>
              </tr>
              <tr>
                <td rowspan="2" colspan="2">Remark: <input type="text" value="Released for Cutting" name="stage2_remark"></td>
                <td rowspan="2">Approval</td>
                <td><input type="text" value="<?php echo $stage2_approved1; ?>" id="stage2_approved1" name="stage2_approved1"></td>
                <td><input type="text" value="<?php echo $stage2_approved2; ?>" id="stage2_approved2" name="stage2_approved2"></td>
              </tr>
              <tr>

               <td>QC</td>
               <td>QA</td>
             </tr>

           </table>



           <button type="button" class="btn btn-primary" id="save">Save changes</button>
           <a href="add1stage.php?id=<?php echo $_GET['id'];?>">    <button type="button" class="btn btn-success" id="save">ADD Process Quality Check</button></a>
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


  $("#stage2_Rejection").blur(function(){

    var total = $('#stage2_qty_issued').val()-$('#stage2_Rejection').val();

    $('#stage2_released').val(total.toFixed(2));


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
      $("#p_sorting2").val('NA');
      $("#p_date2").val('0001-01-01');
      $("#p_time2").val('00:00');
      $("#area2").val('NA');
      $("#area5").val('NA');
      $("#area8").val('NA');
      $("#sort_2").val('NA');
      $("#sort_21").val('NA');
      $("#sort_22").val('NA');
      $("#start_date2").val('0001-01-01');
      $("#start_date3").val('0001-01-01');
      $("#start_time2").val('00:00');
      $("#start_time3").val('00:00');

    }
  });

  $("#p_name3").keyup(function(){
    var y =$("#p_name3").val();
    if (y=='NA' || y=='na') {
      $("#p_batch3").val('NA');
      $("#p_code3").val('NA');
      $("#p_sorting3").val('NA');
      $("#p_date3").val('0001-01-01');
      $("#p_time3").val('00:00');
      $("#area3").val('NA');
      $("#area6").val('NA');
      $("#area9").val('NA');
      $("#sort_3").val('NA');
      $("#sort_31").val('NA');
      $("#sort_32").val('NA');
      $("#start_date5").val('0001-01-01');
      $("#start_date6").val('0001-01-01');
      $("#start_time5").val('00:00');
      $("#start_time6").val('00:00');

    }

  });



  $("#save").click(function(){

    var stage2_date= $("#stage1_date").val();
    var p_name1 =$("#p_name1").val();
    var p_batch1 =$("#p_batch1").val();
    var p_code1 =$("#p_code1").val();
    var p_sorting1 =$("#p_sorting1").val();
    var p_date1 =$("#p_date1").val();
    var p_time1 =$("#p_time1").val();
    var pro_area1 =$("#pro_area1").val();
    var pro_area4 =$("#pro_area4").val();
    var pro_area7 =$("#pro_area7").val();
    var sort_1 =$("#sort_1").val();
    var sort_11 =$("#sort_11").val();
    var sort_12 =$("#sort_12").val();
    var start_date1 =$("#start_date1").val();
    var start_date2 =$("#start_date2").val();
    var start_time1 =$("#start_time1").val();
    var start_time2 =$("#start_time2").val();




    var p_name2 =$("#p_name2").val();
    var p_batch2 =$("#p_batch2").val();
    var p_code2 =$("#p_code2").val();
    var p_sorting2 =$("#p_sorting2").val();
    var p_date2 =$("#p_date2").val();
    var p_time2 =$("#p_time2").val();
    var pro_area2 =$("#pro_area2").val();
    var pro_area5 =$("#pro_area5").val();
    var pro_area8 =$("#pro_area8").val();
    var sort_2 =$("#sort_2").val();
    var sort_21 =$("#sort_21").val();
    var sort_22 =$("#sort_22").val();
    var start_date3 =$("#start_date3").val();
    var start_date4 =$("#start_date4").val();
    var start_time3 =$("#start_time3").val();
    var start_time4 =$("#start_time4").val();
    




    var p_name3 =$("#p_name3").val();
    var p_batch3 =$("#p_batch3").val();
    var p_code3 =$("#p_code3").val();
    var p_sorting3 =$("#p_sorting3").val();
    var p_date3 =$("#p_date3").val();
    var p_time3 =$("#p_time3").val();
    var pro_area3 =$("#pro_area3").val();
    var pro_area6 =$("#pro_area6").val();
    var pro_area9 =$("#pro_area9").val();   
    var sort_3 =$("#sort_3").val();
    var sort_31 =$("#sort_31").val();
    var sort_32 =$("#sort_32").val();
    var start_date5 =$("#start_date5").val();
    var start_date6 =$("#start_date6").val();
    var start_time5 =$("#start_time5").val();
    var start_time6 =$("#start_time6").val();



    if (p_name1=='') {
     alert("enter Previous Job Name");
   }
   else if (p_batch1=='') {
    alert("enter Previous Job Batch No");
  }
  else if (p_code1=='') {
    alert("enter Previous Job Code No");
  }
  else if (p_sorting1=='') {
   alert("enter sorting room No.");
 }
 else if (p_date1=='') {
   alert("enter Date");
 }
 else if (p_time1=='') {
  alert("enter Time");
}
else if (pro_area1=='') {
  alert("enter Done by Production 1");
}
else if (pro_area4=='') {
  alert ("enter Check by Plant Manager 1")
}
else if (pro_area7=='') {
  alert("enter Approved by QC 1");
}
else if (sort_1=='') {
  alert("enter sorting 1");
}
else if (sort_11=='') {
  alert("enter sorting 2.");
}
else if (sort_12=='') {
  alert("enter sorting 3.");
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


else if (stage2_date=='') {
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
else if (p_sorting2=='') {
 alert("enter sorting Name");
}
// else if (p_date2=='') {
//  alert("enter Date");
// }
// else if (p_time2=='') {
//   alert("enter Time");
// }
else if (pro_area2=='') {
  alert("enter Done by Production 2");
}
else if (pro_area5=='') {
  alert ("enter Check by Plant Manager 2 ")
}
else if (pro_area8=='') {
  alert("enter Approved by QC 2");
}
else if (sort_2=='') {
  alert("enter Printing Machine No.");
}
else if (sort_21=='') {
  alert("enter Printing Machine Operator.");
}
else if (sort_22=='') {
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


else if (p_name3=='') {
 alert("enter Previous Job Name");
}
else if (p_batch3=='') {
  alert("enter Previous Job Batch No");
}
else if (p_code3=='') {
  alert("enter Previous Job Code No");
}
else if (p_sorting3=='') {
 alert("enter sorting Name");
}
// else if (p_date3=='') {
//  alert("enter Date");
// }
// else if (p_time3=='') {
//   alert("enter Time");
// }
else if (pro_area3=='') {
  alert("enter Done by Production 3");
}
else if (pro_area6=='') {
  alert ("enter Check by Plant Manager 3")
}
else if (pro_area9=='') {
  alert("enter Approved by QC 3");
}
else if (sort_3=='') {
  alert("enter Printing Machine No.");
}
else if (sort_31=='') {
  alert("enter Printing Machine Operator.");
}
else if (sort_32=='') {
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




    // var a_date= $("#a_date").val();


    // if (a_date=='') {
    //   alert("please enter time");
    // }

else{
 $.ajax({

   url: 'insert-stage3.php',

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

