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
<div class="panel-heading">Research Work</div>
<div class="panel-body">
<div class="table-responsive">
<table id="sample_Data" class="table table-bordered table-striped">
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
<th>Project Title</th>
<th>Year Published</th>
<th>Co-authors</th>
<th>Grade</th>
<th>Guide</th>
</tr>
</thead>
<tbody></tbody>
</table>
</div>
</div>
</div>
</div>
<br />
<br />
</body>
</html>
<script type="text/javascript" language="javascript" >
$(document).ready(function(){
var dataTable = $('#sample_Data').DataTable({
"processing" : true,
"serverSide" : true,
"order" : [],
"ajax" : {
url:"get12.php",
type:"POST"
}
});
$('#sample_Data').on('draw.dt', function(){
});
});
</script>
