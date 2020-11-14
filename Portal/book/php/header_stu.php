<?php
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
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.nav-side-menu {
font-family: verdana;
font-size: 10px;
font-weight: 200;
background-color: #2e353d;
position: relative;
width: 200px;
height: 100%;
color: #e1ffff;
font-size: 15px;
}
.nav-side-menu .brand {
background-color: #23282e;
line-height: 50px;
display: block;
text-align: center;
font-size: 10px;

}
.nav-side-menu .toggle-btn {
display: none;
}
.nav-side-menu ul,
.nav-side-menu li {
list-style: none;
padding: 0px;
margin: 0px;
line-height: 35px;
cursor: pointer;

}
.nav-side-menu ul :not(collapsed) .arrow:before,
.nav-side-menu li :not(collapsed) .arrow:before {
font-family: FontAwesome;
content: "\f078";
display: inline-block;
padding-left: 10px;
padding-right: 10px;
vertical-align: middle;
float: right;
}
.nav-side-menu ul .active,
.nav-side-menu li .active {
border-left: 3px solid #d19b3d;
background-color: #4f5b69;
}
.nav-side-menu ul .sub-menu li.active,
.nav-side-menu li .sub-menu li.active {
color: #d19b3d;
}
.nav-side-menu ul .sub-menu li.active a,
.nav-side-menu li .sub-menu li.active a {
color: #d19b3d;
}
.nav-side-menu ul .sub-menu li,
.nav-side-menu li .sub-menu li {
background-color: #181c20;
border: none;
line-height: 28px;
border-bottom: 1px solid #23282e;
margin-left: 0px;
}
.nav-side-menu ul .sub-menu li:hover,
.nav-side-menu li .sub-menu li:hover {
background-color: #020203;
}
.nav-side-menu ul .sub-menu li:before,
.nav-side-menu li .sub-menu li:before {
font-family: FontAwesome;
content: "\f105";
display: inline-block;
padding-left: 10px;
padding-right: 10px;
vertical-align: middle;
}
.nav-side-menu li {
padding-left: 0px;
border-left: 3px solid #2e353d;
border-bottom: 1px solid #23282e;
}
.nav-side-menu li a {
text-decoration: none;
color: #e1ffff;
}
.nav-side-menu li a i {
padding-left: 10px;
width: 20px;
padding-right: 20px;
}
.nav-side-menu li:hover {
border-left: 3px solid #d19b3d;
background-color: #4f5b69;
-webkit-transition: all 1s ease;
-moz-transition: all 1s ease;
-o-transition: all 1s ease;
-ms-transition: all 1s ease;
transition: all 1s ease;
}
@media (max-width: 767px) {
.nav-side-menu {
position: absolute;
width: 100%;
margin-bottom: 10px;
}
.nav-side-menu .toggle-btn {
display: block;
cursor: pointer;
position: absolute;
right: 10px;
top: 10px;
z-index: 10 !important;
padding: 3px;
background-color: #ffffff;
color: #000;
width: 40px;
text-align: center;
}
.brand {
text-align: left !important;
font-size: 22px;
padding-left: 20px;
line-height: 50px !important;
}
}
@media (min-width: 767px) {
.nav-side-menu .menu-list .menu-content {
display: block;
}
}
.topright {
position: absolute;
top: 8px;
right: 16px;
font-size: 18px;
}
</style>
</head>
<body>
<div id="wrapper">
<nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0;background:orangered;">
<div class="navbar-header" style="background: orangered ;">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<h3 class="navbar-cls-top navbar-brand " style="background: orangered ;color: white;font-weight: 800;">Academic Portal</h3>
</div>
<div class="dropdown topright"><br>
<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" style="background: orangered;color: white;margin-right:55px"><i class="fa fa-user" ></i> <?php echo $username; ?>
<span class="caret"></span></button>
<ul class="dropdown-menu">
<li><a href="faculty.php">My Account</a></li>
<li><a href="logout.php">Logout</a></li>
</ul>
</div>
</div>
</nav>
<nav class="navbar-default navbar-side" role="navigation">
<div class="nav-side-menu">
<i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
<div class="menu-list">
<ul id="menu-content" class="menu-content collapse out">
<li>
<a href="index.php">
<i class="fa fa-dashboard fa-lg"></i> Dashboard
</a>
</li>
<li  data-toggle="collapse" data-target="#myInfo" class="collapsed active">
<a href="#"><i class="fa fa-user fa-lg"></i> My Info <span class="arrow"></span></a>
</li>
<ul class="sub-menu collapse" id="myInfo">
<li><a href="faculty.php">Profile</a></li>
<li><a href="account.php">Accounts</a></li>
<li><a href="timetable.php">Time Table</a></li>
</ul>
<li>
<a href="proctor.php">
<i class="fa fa-user fa-lg"></i> Proctor
</a>
</li>
<li data-toggle="collapse" data-target="#view" class="collapsed">
<a href="#"><i class="fa fa-file-text"></i> View <span class="arrow"></span></a>
</li>
<ul class="sub-menu collapse" id="view">
<li><a href="report.php">Report</a></li>
<li><a href="marks.php">Marks</a></li>
<li><a href="test.php">Test</a></li>
<li><a href="attendence.php">Attendance</a></li>
</ul>
<li data-toggle="collapse" data-target="#stuInfo" class="collapsed">
<a href="#"><i class="fa fa-user fa-lg"></i> Records <span class="arrow"></span></a>
</li>
<ul class="sub-menu collapse" id="stuInfo">
<li><a href="search.php">Academic records</a></li>
<li><a href="activity.php">Extracurricular</a></li>
</ul>
<li>
<a href="alumini.php">
<i class="fa fa-user fa-lg"></i> Alumni
</a>
</li>
</ul>
</div>
</div>
</nav>
</div>
</body>
</html>
