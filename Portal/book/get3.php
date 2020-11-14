<?php
session_start();
$username=$_SESSION['rainbow_username'];
$role=$_SESSION['rainbow_role'];
$id=$_SESSION['rainbow_uid'];
include('database_connection.php');
$column = array("SNo","RegistrationNumber","Name","Club","Post","FromDate","ToDate","Guide");
if($role=="student"){
$column = array("Club","Post","FromDate","ToDate","Guide");
$query = "SELECT * FROM club where RegistrationNumber like '%$id%'";
}
else{
$query = "SELECT * FROM club";
}
if(isset($_POST["search"]["value"]))
{
$query .= '
having RegistrationNumber LIKE "%'.$_POST["search"]["value"].'%"
OR Name LIKE "%'.$_POST["search"]["value"].'%"
OR Club LIKE "%'.$_POST["search"]["value"].'%"
OR Post LIKE "%'.$_POST["search"]["value"].'%"
OR FromDate LIKE "%'.$_POST["search"]["value"].'%"
OR ToDate LIKE "%'.$_POST["search"]["value"].'%"
OR Guide LIKE "%'.$_POST["search"]["value"].'%"
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
$sub_array[] = $row['RegistrationNumber'];
$sub_array[] = $row['Name'];
}
$sub_array[] = $row['Club'];
$sub_array[] = $row['Post'];
$sub_array[] = $row['FromDate'];
$sub_array[] = $row['ToDate'];
$sub_array[] = $row['Guide'];
$data[] = $sub_array;
}
function count_all_data($connect)
{
$query = "SELECT * FROM club";
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
