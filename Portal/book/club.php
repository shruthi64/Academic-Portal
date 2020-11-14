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
<h1 class="page-head-line">Club
</h1>
</div>
</div>
<link href="css/datatable/datatable.css" rel="stylesheet" />
<div class="panel panel-default">
<div class="panel-heading">
<p style="font-size: 15px;font-weight: bold;">Club Details</p>
</div>
<div class="panel-body">
<div class="table-sorting table-responsive">
<table class="table table-striped table-bordered table-hover" id="tSortable22">
<tbody>
<?php 
$username=$_SESSION['rainbow_username'];
$conn = new mysqli('localhost','root','','portal');
if($conn->connect_error){
echo "$conn->connect_error";
die("Connection Failed : ". $conn->connect_error);
} else {
$sql = "SELECT * FROM club_fac where id like '%$id%'";
$result = mysqli_query($conn, $sql);
} 
while($row = mysqli_fetch_assoc($result))
{
?>
<thead>
<tr>
<th>Name</th>
<td class="col-md-6"><?php echo $row['Name'];?></td>
</tr>
<tr>
<th>Club</th>
<td><?php echo $row['Club Name'];?></td>
</tr>
<tr>
<th>Position</th>
<td><?php echo $row['Position'];?></td>
</tr>
<tr>
<th>Total students</th>
<td><?php echo $row['No of students'];?></td>
</tr>
<tr>
<th>DOJ</th>
<td><?php echo $row['Date of Joining'];?></td>
</tr>
</thead>
<?php
}
?>
</tbody>
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
