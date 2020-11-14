<?php
session_start();
$username=$_SESSION['rainbow_username'];
$role=$_SESSION['rainbow_role'];
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Academic Portal</title>
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="css/font-awesome.css" rel="stylesheet" />
<link href="css/layout.css" rel="stylesheet" />
<link href="css/custom.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="js/jquery-1.10.2.js"></script>
<link href="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<?php
if($role=="student"){
include("php/header_stu.php");
}
else
include("php/header.php");?>
<div id="page-wrapper">
<div id="page-inner">
<div class="row">
<div class="col-md-12">
<h1 class="page-head-line">Alumni</h1>

</div>
</div>
<div class="row" style="margin-bottom:20px;">
<div class="col-md-12">
<fieldset class="scheduler-border" >
<form action="<?=$_SERVER['PHP_SELF'];?>" method="post">
<br><br>
<input type="submit" class="btn btn-primary btn-sm" name="search" value="Search">
<input type="reset" class="btn btn-danger btn-sm" id="clear" >
<br><br>
<div id="options">
<div class="col-sm-3">
<form method="post">
<input type="checkbox" name="opt[]" value="RegistrationNumber" id="1">
<label style="color: white">Registration Number</label>
</div>
<div class="col-sm-3" id='2'>
<input type="checkbox" name="opt[]" value="Program" id="2">
<label style="color: white">Program</label>
</div>
<div class="col-sm-3">
<input type="checkbox" name="opt[]" value="Branch" id="3">
<label style="color: white">Branch</label>
</div>
<div class="col-sm-3">
<input type="checkbox" name="opt[]" value="Country" id="4">
<label style="color: white">Country</label>
</div>
<div class="col-sm-3" >
<input type="checkbox" name="opt[]" value="YearofGraduation" id="5">
<label style="color: white">Year of Graduation</label>
</div>
<div class="col-sm-3" >
<input type="checkbox" name="opt[]" value="Course" id="6">
<label style="color: white">Course</label>
</div>
<div class="col-sm-3">
<input type="checkbox" name="opt[]"  value="Company" id="7">
<label style="color: white">Company</label>
</div>
<div class="col-sm-3">
<input type="checkbox" name="opt[]" value="City" id="8">
<label style="color: white">City</label>
</div>
<div class="col-sm-3">
<input type="checkbox" name="opt[]" value="Name" id="9">
<label style="color: white">Name</label>
</div>
</form>
</div>
</form>
</fieldset>
<?php
if(isset($_POST['search'])){
$sql = '';
$count=0;
if(!empty($_POST["opt"]))
{
foreach($_POST["opt"] as $option)
{
$sql .= $option. ', ';
$count++;
}
$str = preg_split ("/\,/", $sql);
array_pop($str);
file_put_contents('array.txt', json_encode($str));
}
?>
<form action="<?=$_SERVER['PHP_SELF'];?>" method="post">
<input type="submit" class="btn btn-primary btn-sm" name="add" value="Search">
<?php
foreach($_POST["opt"] as $option)
{
$sql .= $option . ',';
?>
<input type="text" class="form-control" name="find[]"  id="10" placeholder="<?php echo "$option"; ?>" /><br>
<?php }} ?>
</form>
</fieldset>
</div>
</div>
<div class="panel panel-default" id="panel">
<div class="panel-heading">
<p style="font-size: 15px;font-weight: bold;">Student Details</p>
</div>
<div class="panel-body">
<div class="table-sorting table-responsive">
<table class="table table-striped table-bordered table-hover">
<thead>
<tr>
<th>Registration Number</th>
<th>Name</th>
<th>Program</th>
<th>Course</th>
<th>Branch</th>
<th>Year of Graduation</th>
<th>Designation</th>
<th>Company</th>
<th>Mobile Number</th>
<th>Email ID</th>
<th>Current Address</th>
</tr>
</thead>
<tbody>
<?php
if(isset($_POST['add']))
{
$sql = '';
$count=0;
if(!empty($_POST["find"]))
{
foreach($_POST["find"] as $option)
{
$sql .= $option . ',';
$count++;
}
$str_arr = preg_split ("/\,/", $sql);
array_pop($str_arr);
file_put_contents('arr.txt', json_encode($str_arr));
$first = json_decode(file_get_contents('arr.txt'), true);
for($i=0;$i<sizeof($first);$i++)
$second = json_decode(file_get_contents('array.txt'), true);
$a=array_combine($second,$first);
$col = array_keys($a);
$value = count($a);
}
$conn = new mysqli('localhost','root','','portal');
$sql = "SELECT * FROM alumni";
if($value==1){
$b=$a[$col[0]];
$sql .= " where ". $col[0]."="."'$b'";
}
else{
for($i=0;$i<$value;$i++){
if($i==0)	{
$b=$a[$col[0]];
$sql .= " where ". $col[0]."="."'$b'";
}
else{
$b=$a[$col[$i]];
$sql .= " and ";
if($i==1)
$sql .="(";
$sql .=$col[$i]."="."'$b'";
if($i==($value-1))
$sql .=")";
}
}
}
$result = mysqli_query($conn, $sql);
while($row = mysqli_fetch_assoc($result))
{
?>
<tbody>
<tr>
<td><?php echo $row['RegistrationNumber'];?></td>
<td><?php echo $row['Name'];?></td>
<td><?php echo $row['Program'];?></td>
<td><?php echo $row['Course'];?></td>
<td><?php echo $row['Branch'];?></td>
<td><?php echo $row['YearofGraduation'];?></td>
<td><?php echo $row['Designation'];?></td>
<td><?php echo $row['Company'];?></td>
<td><?php echo $row['MobileNumber'];?></td>
<td><?php echo $row['Email'];?></td>
<td><?php echo $row['CurrentAddress'];?></td>
</tr>
</tbody>
<?php
}}
?>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="footer-sec">
</div>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.metisMenu.js"></script>
<script src="js/custom1.js"></script>
</body>
</html>
