<?php
$username=$_SESSION['rainbow_username'];
$role=$_SESSION['rainbow_role'];
$id=$_SESSION['rainbow_uid'];
?>
<html>
<head>
<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
<script src="https://markcell.github.io/jquery-tabledit/assets/js/tabledit.min.js"></script> </head>
<body>
<div class="container">
<br />
<div class="panel panel-default">
<div class="panel-heading">Project</div>
<div class="panel-body">
<div class="table-responsive">
<table id="sampleData" class="table table-bordered table-striped">
<thead>
<tr>
<?php
if($role=="user"){
?>
<th>S.No</th>
<th>Registration Number</th>
<th>Name</th>
<?php
}
?>
<th>Course Code</th>
<th>Course</th>
<th>Course Type</th>
<th>Project Title</th>
<?php
if($role=="student"){
?>
<th>Guide</th>
<?php
}
?>
</tr>
</thead>
<tbody></tbody>
</table>
</div>
</div>
</div>
</div>
<br/>
<br/>
</body>
</html>
<script type="text/javascript" language="javascript" >
$(document).ready(function(){
var dataTable = $('#sampleData').DataTable({
"processing" : true,
"serverSide" : true,
"order" : [],
"ajax" : {
url:"get6.php",
type:"POST"
}
});
$('#sampleData').on('draw.dt', function(){
});
});
</script>
