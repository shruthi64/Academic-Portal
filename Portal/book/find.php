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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="css/font-awesome.css" rel="stylesheet" />
<link href="css/layout.css" rel="stylesheet" />
<link href="css/custom.css" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="js/jquery-1.10.2.js"></script>
</head>
<body>
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
<h1 class="page-head-line">TIME TABLE</h1>
<?php
include("display1.php");
?>
</div>
</div>
</div>
</div>
</body>
</html>
