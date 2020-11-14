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
<h1 class="page-head-line">Account
</h1>
</div>
</div>
<link href="css/datatable/datatable.css" rel="stylesheet" />
<div class="panel panel-default">
<div class="panel-heading">
<p style="font-size: 15px;font-weight: bold;">Bank Information</p>
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
$sql = "SELECT * FROM account where id like '%$id%'";
$result = mysqli_query($conn, $sql);
}
while($row = mysqli_fetch_assoc($result))
{
?>
<thead>
<tr>
<th>Bank Holder Name</th>
<td class="col-md-6"><?php echo $row['Name'];?></td>
</tr>
<tr>
<th>Relationship Type</th>
<td><?php echo $row['Relationship Type'];?></td>
</tr>
<tr>
<th>Account Number</th>
<td><?php echo $row['Account Number'];?></td>
</tr>
<tr>
<th>IFSC Code</th>
<td><?php echo $row['IFSC Code'];?></td>
</tr>
<tr>
<th>Bank Details</th>
<td><?php echo $row['Bank Details'];?></td>
</tr>
<tr>
<th>Bank Passbook / Statement</th>
<td><?php echo $row['Bank Passbook/Statement'];?></td>
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
