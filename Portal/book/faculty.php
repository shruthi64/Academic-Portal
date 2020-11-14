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
<h1 class="page-head-line">Profile
</h1>
</div>
</div>
<link href="css/datatable/datatable.css" rel="stylesheet" />
<div class="panel panel-default">
<div class="panel-heading">
<p style="font-size: 15px;font-weight: bold;">Personal Information</p>
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
$sql = "SELECT * FROM personal_information where  id like '%$id%'";
$result = mysqli_query($conn, $sql);
}
while($row = mysqli_fetch_assoc($result))
{
?>
<thead>
<tr>
<th>ID</th>
<td class="col-md-6"><?php echo $row['id'];?></td>
</tr>
<tr>
<th>Name</th>
<td><?php echo $row['Name'];?></td>
</tr>
<tr>
<th>DOB</th>
<td ><?php echo $row['DOB'];?></td>
</tr>
<tr>
<th>Gender</th>
<td><?php echo $row['Gender'];?></td>
</tr>
<tr>
<th>Native Language</th>
<td><?php echo $row['Native Language'];?></td>
</tr>
<tr>
<th>Native State</th>
<td><?php echo $row['Native State'];?></td>
</tr>
<tr>
<th>Designation</th>
<td><?php echo $row['Designation'];?></td>
</tr>
<tr>
<th>Blood Group</th>
<td><?php echo $row['Blood Group'];?></td>
</tr>
<tr>
<th>Physically Challenged</th>
<td><?php echo $row['Physically Challenged'];?></td>
</tr>
<tr>
<th>Community</th>
<td><?php echo $row['Community'];?></td>
</tr>
<tr>
<th>Religion</th>
<td><?php echo $row['Religion'];?></td>
</tr>
<tr>
<th>Caste</th>
<td><?php echo $row['Caste'];?></td>
</tr>
<tr>
<th>Nationality</th>
<td><?php echo $row['Nationality'];?></td>
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
<div class="panel panel-default">
<div class="panel-heading">
<p style="font-size: 15px;font-weight: bold;">School Information</p>
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
$sql = "SELECT * FROM school_info where id like '%$id%'";
$result = mysqli_query($conn, $sql);
}
while($row = mysqli_fetch_assoc($result))
{
?>
<thead>
<tr>
<th>School</th>
<td class="col-md-6"><?php echo $row['School'];?></td>
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
}$conn -> close();
?>
</tbody>
</table>
</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p style="font-size: 15px;font-weight: bold;">Current Address</p>
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
$sql = "SELECT * FROM address where id like '%$id%'";
$result = mysqli_query($conn, $sql);
}
while($row = mysqli_fetch_assoc($result))
{
?>
<thead>
<tr>
<th>Street Name</th>
<td  class="col-md-6"><?php echo $row['Street Name'];?></td>
</tr>
<tr>
<th>Area Name</th>
<td><?php echo $row['Area Name'];?></td>
</tr>
<tr>
<th>City</th>
<td><?php echo $row['City'];?></td>
</tr>
<tr>
<th>State</th>
<td><?php echo $row['State'];?></td>
</tr>
<tr>
<th>Country</th>
<td><?php echo $row['Country'];?></td>
</tr>
<tr>
<th>Pincode</th>
<td><?php echo $row['Pincode'];?></td>
</tr>
<tr>
<th>Phone</th>
<td><?php echo $row['Phone'];?></td>
</tr>
<tr>
<th>Email</th>
<td><?php echo $row['Email'];?></td>
</tr>
</thead>
<?php
}
$conn -> close();
?>
</tbody>
</table>
</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p style="font-size: 15px;font-weight: bold;">Permanent Address</p>
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
$sql = "SELECT * FROM permanent_address where id like '%$id%'";
$result = mysqli_query($conn, $sql);
}
while($row = mysqli_fetch_assoc($result))
{
?>
<thead>
<tr>
<th>Street Name</th>
<td  class="col-md-6"><?php echo $row['Street Name'];?></td>
</tr>
<tr>
<th>Area Name</th>
<td><?php echo $row['Area Name'];?></td>
</tr>
<tr>
<th>City</th>
<td><?php echo $row['City'];?></td>
</tr>
<tr>
<th>State</th>
<td><?php echo $row['State'];?></td>
</tr>
<tr>
<th>Country</th>
<td><?php echo $row['Country'];?></td>
</tr>
<tr>
<th>Pincode</th>
<td><?php echo $row['Pincode'];?></td>
</tr>
<tr>
<th>Phone</th>
<td><?php echo $row['Phone'];?></td>
</tr>
<tr>
<th>Email</th>
<td><?php echo $row['Email'];?></td>
</tr>
</thead>
<?php
}$conn -> close();
?>
</tbody>
</table>
</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p style="font-size: 15px;font-weight: bold;">Educational Details</p>
</div>
<div class="panel-body">
<div class="table-sorting table-responsive">
<table class="table table-striped table-bordered table-hover" id="tSortable22">
<tbody>
<?php
$conn = new mysqli('localhost','root','','portal');
if($conn->connect_error){
echo "$conn->connect_error";
die("Connection Failed : ". $conn->connect_error);
} else {
$sql = "SELECT * FROM edu_details where id like '%$id%'";
$result = mysqli_query($conn, $sql);
}
while($row = mysqli_fetch_assoc($result))
{
?>
<thead>
<tr>
<th>Educational Qualification</th>
<td  class="col-md-6"><?php echo $row['Educational Qualifications'];?></td>
</tr>
<tr>
<th>Branch/Group Studied</th>
<td><?php echo $row['Branch/Group studied'];?></td>
</tr>
<tr>
<th>School Name</th>
<td><?php echo $row['School Name'];?></td>
</tr>
<tr>
<th>College Name</th>
<td><?php echo $row['College Name'];?></td>
</tr>
<tr>
<th>Medium of study</th>
<td><?php echo $row['Medium of study'];?></td>
</tr>
<tr>
<th>Board/University</th>
<td><?php echo $row['Board/University'];?></td>
</tr>
<tr>
<th>Class obtained</th>
<td><?php echo $row['Class Obtained'];?></td>
</tr>
<tr>
<th>Year Of Graduation</th>
<td><?php echo $row['Year of Graduation'];?></td>
</tr>
<tr>
<th>Month Of Graduation</th>
<td><?php echo $row['Month of Graduation'];?></td>
</tr>
<tr>
<th>Work Experience</th>
<td><?php echo $row['Work Experience'];?></td>
</tr>
<tr>
<th>Reference</th>
<td><?php echo $row['Reference'];?></td>
</tr>
</thead>
<?php
}
$conn -> close();
?>
</tbody>
</table>
</div>
</div>
</div>
<?php
if($role=="user"){
?>
<div class="panel panel-default">
<div class="panel-heading">
<p style="font-size: 15px;font-weight: bold;">Social Profile</p>
</div>
<div class="panel-body">
<div class="table-sorting table-responsive">
<table class="table table-striped table-bordered table-hover" id="tSortable22">
<tbody>
<?php
$conn = new mysqli('localhost','root','','portal');
if($conn->connect_error){
echo "$conn->connect_error";
die("Connection Failed : ". $conn->connect_error);
} else {
$sql = "SELECT * FROM social_details where id like '%$id%'";
$result = mysqli_query($conn, $sql);
}
while($row = mysqli_fetch_assoc($result))
{
?>
<thead>
<tr>
<th>GitHub</th>
<td  class="col-md-6"><?php echo $row['Github'];?></td>
</tr>
<tr>
<th>LinkedIn</th>
<td><?php echo $row['LinkedIn'];?></td>
</tr>
<tr>
<th>Twitter</th>
<td><?php echo $row['Twitter'];?></td>
</tr>
<tr>
<th>Instagram</th>
<td><?php echo $row['Instagram'];?></td>
</tr>
</thead>
<?php
}
$conn -> close();
?>
</tbody>
</table>
</div>
</div>
</div>
<?php
}
?>
</div>
</div>
<div id="footer-sec">
</div>
</body>
</html>

