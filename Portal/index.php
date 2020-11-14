<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Academic Portal</title>
<link href="book/css/bootstrap.css" rel="stylesheet" />
<link href="book/css/font-awesome.css" rel="stylesheet" />
<link href="book/css/layout.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<style>
.myhead{
margin-top:0px;
margin-bottom:0px;
text-align:center;
}
a.nounderline {text-decoration: none; }
.container .button1 {
position: absolute;
top: 80%;
left: 50%;
transform: translate(-50%, -50%);
-ms-transform: translate(-50%, -50%);
font-size: 16px;
padding: 12px 24px;
border: none;
cursor: pointer;
border-radius: 5px;
text-align: center;
background: #e30522;
}
.container .button2 {
position: absolute;
top: 90%;
left: 50%;
transform: translate(-50%, -50%);
-ms-transform: translate(-50%, -50%);
font-size: 16px;
padding: 12px 24px;
border: none;
cursor: pointer;
border-radius: 5px;
text-align: center;
background: orangered;
}
</style>
<script>
var countDownDate = new Date("Oct 27, 2019 08:00:00").getTime();
var x = setInterval(function() {
var now = new Date().getTime();
var distance = countDownDate - now;
var days = Math.floor(distance / (1000 * 60 * 60 * 24));
var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
var seconds = Math.floor((distance % (1000 * 60)) / 1000);
document.getElementById("demo").innerHTML = days + "Days " + hours + "Hrs "
+ minutes + "Min " + seconds + "Sec ";
</script>
</head>
<body >
<div id="wrapper">
<nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0;background:orangered;">
<div class="navbar-header" style="background:orangered;">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<h3 class="navbar-cls-top navbar-brand " style="background: orangered;color: white;font-weight: 800;">Academic Portal</h3>
</div>
</nav>
<div id="page-inner">
<div class="container">
<form class="form-inline" role="form" >
<center>
<img src="images/bg.png" style="width:30%;height: 10%">
<a href="book/login.php"style="color:white"><p class="btn btn-info btn-sm button1" style="top:70%"> FACULTY LOGIN</p></a><br>
<a href="book/stu_login.php" style="color:white"><p class="btn btn-success btn-sm button2" style="top:80%">  STUDENT LOGIN</p></a>
</center>
</form>
</div>
</body>
</html>
