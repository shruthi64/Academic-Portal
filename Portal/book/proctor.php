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
include("php/header_stu.php");
?>
<div id="page-wrapper">
<div id="page-inner">
<div class="row">
<div class="col-md-12">
<h1 class="page-head-line">Proctor
</h1>
</div>
</div>
<link href="css/datatable/datatable.css" rel="stylesheet" />
<div class="panel panel-default">
<div class="panel-heading">
<p style="font-size: 15px;font-weight: bold;">Proctor Details</p>
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
$sql = "SELECT * FROM school_info where Student like '%$username%'";
$result = mysqli_query($conn, $sql);
} 
while($row = mysqli_fetch_assoc($result))
{
?>
<thead>
<tr>
<th>Name</th>
<td><?php echo $row['Name'];?></td>
</tr>
<tr>
<th>School</th>
<td><?php echo $row['School'];?></td>
</tr>
<tr>
<th>Room</th>
<td><?php echo $row['Room'];?></td>
</tr>
<tr>
<th>Department</th>
<td><?php echo $row['Department'];?></td>
</tr>
<tr>
<th>Email</th>
<td><?php echo $row['Email'];?></td>
</tr>
<tr>
<th>Intercom</th>
<td><?php echo $row['Intercom'];?></td>
</tr>
<tr>
<th>Phone</th>
<td><?php echo $row['Phone'];?></td>
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
<div id="footer-sec">
</div>
</body>
</html>
