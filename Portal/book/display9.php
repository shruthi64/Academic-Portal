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
<div class="panel-heading">Course</div>
<div class="panel-body">
<div class="table-responsive">
<table id="sample_data" class="table table-bordered table-striped">
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
<th>CourseCode</th>
<th>Course</th>
<th>CourseType</th>
<th>Credits</th>
<th>Grade</th>
<th>Faculty</th>
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
var dataTable = $('#sample_data').DataTable({
"processing" : true,
"serverSide" : true,
"order" : [],
"ajax" : {
url:"get10.php",
type:"POST"
}
});
$('#sample_data').on('draw.dt', function(){
});
});
</script>

