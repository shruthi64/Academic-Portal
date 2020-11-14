<?php
include("php/dbconnect.php");
$error = '';
if(isset($_POST['login']))
{
$id=mysqli_real_escape_string($conn,$_POST['id']);
$password =  mysqli_real_escape_string($conn,$_POST['password']);
if($id=='' || $password=='')
{
$error='All fields are required';
}
$sql = "select * from user where id='".$id."' and password = '".$password."'";
$q = $conn->query($sql);
if($q->num_rows==1)
{
$res = $q->fetch_assoc();
$_SESSION['rainbow_username']=$res['username'];
$_SESSION['rainbow_uid']=$res['id'];
$_SESSION['rainbow_role']=$res['role'];
echo '<script type="text/javascript">window.location="index.php"; </script>';
}else
{
$error = 'Invalid Username or Password';
}
}
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
<style>
.myhead{
margin-top:0px;
margin-bottom:0px;
text-align:center;
}
a.nounderline {text-decoration: none; }
</style>
</head>
<body >
<div id="wrapper">
<nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0;background:orangered;">
<div class="navbar-header" style="background: orangered ;">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<h3 class="navbar-cls-top navbar-brand " style="background:orangered;color: white;font-weight: 800;">Academic Portal</h3>
</div>
</nav>
<div id="page-inner">
<div class="container">
<div class="row ">
<img src="images/bg.png" style="width:20%;margin-left:-10%">
<div class="col-md-3 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
<div class="panel-body" style="background-color: #E2E2E2; margin-top:60%; margin-left:40%;border:solid 3px #0e0e0e;width:150%">
<h3 class="myhead">FACULTY LOGIN</h3>
<form role="form" action="login.php" method="post">
<hr />
<?php
if($error!='')
{
echo '<h5 class="text-danger text-center">'.$error.'</h5>';
}
?>
<div class="form-group input-group">
<span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
<input type="text" class="form-control" placeholder="Your ID " name="id" required />
</div>
<div class="form-group input-group">
<span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
<input type="password" class="form-control"  placeholder="Your Password" name="password" required />
</div>
<div class="form-group">
<span class="pull-right">
</span>
</div>
<button class="btn " type= "submit" name="login" style="background: red;color: white">Login Now</button>
<a href="http://localhost/Portal/index.php"style="color:white;"> <p class="btn " style="background: orangered"> Back Home</p></a>
</form>
</div>
</div>
</div>
</div>
</body>
</html>
