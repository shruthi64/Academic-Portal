<?php
include("php/header.php");
?>
<div id="page-wrapper">
<div id="page-inner">
<div class="row">
<div class="col-md-12">
<h1 class="page-head-line">Schedule Test
<a class="btn btn-primary" href="test.php"  style="float: right;">Back</a>
</h1>
</div>
</div>
<script type="text/javascript" src="js/validation/jquery.validate.min.js"></script>
<div class="row">
<div class="col-sm-8 col-sm-offset-2">
<div class="panel panel-default">
<div class="panel-heading">
<p style="font-size: 15px;font-weight: bold;">Schedule Test</p>
</div>
<form action="add_alumni.php" method="post" class="form-horizontal">
<div class="panel-body">
<div class="form-group">
<label class="col-sm-2 control-label" for="Old"> Course Code</label>
<div class="col-sm-10">
<input type="text" class="form-control" id="branch" name="regNo"  />
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label" for="Password"> Date </label>
<div class="col-sm-10">
<input type="date" class="form-control" id="branch" name="name"  />
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label" for="Password"> Time </label>
<div class="col-sm-10">
<input type="time" class="form-control" id="branch" name="prgm"  />
</div>
</div>
<div class="form-group">
<div class="col-sm-8 col-sm-offset-2">
<input class="btn btn-primary" name="confirm" type="submit" value="Schedule">
</div>
</div>
</div>
</div>
</form>
<?php
if(isset($_POST['confirm'])){
$conn = new mysqli('localhost','root','','portal');
$sql="insert into alumni(RegistrationNumber,Name,Program,YearofGraduation,Course,Branch,Company,Designation,MobileNumber,Email,CurrentAddress,Country,City) values ('$_POST[regNo]','$_POST[name]','$_POST[prgm]','$_POST[yog]','$_POST[course]','$_POST[branch]','$_POST[designation]', '$_POST[phone]','$_POST[email]','$_POST[addr]','$_POST[country]','$_POST[city]')";
$result = mysqli_query($conn, $sql);
}
?>
</div>
</div>
</div>
</div>
</div>
<div id="footer-sec">
</div>

