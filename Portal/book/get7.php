<?php
session_start();
$username=$_SESSION['rainbow_username'];
$role=$_SESSION['rainbow_role'];
$id=$_SESSION['rainbow_uid'];
include('database_connection.php');
$column = array("SNo","CourseCode", "Slot","Name", "test_date","test_time");
if($role=="student"){
$query = "SELECT * FROM test where RegistrationNumber like '%$id%'";
}
else{
$query = "SELECT * FROM test where id like '%$id%'";
}
if(isset($_POST["search"]["value"]))
{
$query .= '
having CourseCode LIKE "%'.$_POST["search"]["value"].'%"
OR Slot LIKE "%'.$_POST["search"]["value"].'%"
OR test_date LIKE "%'.$_POST["search"]["value"].'%"
OR test_time LIKE "%'.$_POST["search"]["value"].'%"
';
}
if(isset($_POST["order"]))
{
$query .= 'ORDER BY '.$column[$_POST['order']['0']['column']].' '.$_POST['order']['0']['dir'].' ';
}
else
{
$query .= 'ORDER BY SNo ';
}
$query1 = '';
if($_POST["length"] != -1)
{
$query1 = 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];
}
$statement = $connect->prepare($query);
$statement->execute();
$number_filter_row = $statement->rowCount();
$statement = $connect->prepare($query . $query1);
$statement->execute();
$result = $statement->fetchAll();
$data = array();
foreach($result as $row)
{
$sub_array = array();
if($role=="user"){
$sub_array[] = $row['SNo'];
}
$sub_array[] = $row['CourseCode'];
$sub_array[] = $row['Slot'];
$sub_array[] = $row['test_date'];
$sub_array[] = $row['test_time'];
$data[] = $sub_array;
}
function count_all_data($connect)
{
$query = "SELECT * FROM test";
$statement = $connect->prepare($query);
$statement->execute();
return $statement->rowCount();
}
$output = array(
'draw'   => intval($_POST['draw']),
'recordsTotal' => count_all_data($connect),
'recordsFiltered' => $number_filter_row,
'data'   => $data
);
echo json_encode($output);
?>
