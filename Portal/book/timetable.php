<?php
session_start();
$username=$_SESSION['rainbow_username'];
$role=$_SESSION['rainbow_role'];
$id=$_SESSION['rainbow_uid'];
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
<h1 class="page-head-line">Time Table
</h1>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p style="font-size: 15px;font-weight: bold;">Time table</p>
</div>
<div class="panel-body">
<div class="table-sorting table-responsive">
<table class="table table-striped table-bordered table-hover" id="tSortable22">
<thead>
<tr>
<th>Slot</th>
<th>Course</th>
<th>Course Code</th>
<th>Course Type</th>
<th>Category</th>
<th>Venue</th>
</tr>
</thead>
<?php
$username=$_SESSION['rainbow_username'];
$conn = new mysqli('localhost','root','','portal');
if($conn->connect_error){
echo "$conn->connect_error";
die("Connection Failed : ". $conn->connect_error);
} else {
$sql = "SELECT * FROM time_table where id like '%$id%'";
$result = mysqli_query($conn, $sql);
while($row = mysqli_fetch_assoc($result))
{
?>
<tbody>
<tr>
<td><?php echo $row['Slot'];?></td>
<td><?php echo $row['Course'];?></td>
<td><?php echo $row['CourseCode'];?></td>
<td><?php echo $row['CourseType'];?></td>
<td><?php echo $row['Category'];?></td>
<td><?php echo $row['Venue'];?></td>
</tr>
</tbody>
<?php
}}
?>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="footer-sec">
</div>
</body>
</html>
