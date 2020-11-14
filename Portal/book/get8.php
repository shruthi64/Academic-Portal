<?php
session_start();
$username=$_SESSION['rainbow_username'];
$id=$_SESSION['rainbow_uid'];
include('database_connection.php');
$column = array("SNo","Name", "RegistrationNumber","Email","Phone");
$query = "SELECT * FROM proctee where id like '%$id%'";
if(isset($_POST["search"]["value"]))
{
$query .= '
having Name LIKE "%'.$_POST["search"]["value"].'%"
OR RegistrationNumber LIKE "%'.$_POST["search"]["value"].'%"
OR Email LIKE "%'.$_POST["search"]["value"].'%"
OR Phone LIKE "%'.$_POST["search"]["value"].'%"
OR YOJ LIKE "%'.$_POST["search"]["value"].'%"
OR School LIKE "%'.$_POST["search"]["value"].'%"
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
$sub_array[] = $row['Name'];
$sub_array[] = $row['RegistrationNumber'];
$sub_array[] = $row['Email'];
$sub_array[] = $row['Phone'];
$sub_array[] = $row['School'];
$sub_array[] = $row['YOJ'];
$data[] = $sub_array;
}
function count_all_data($connect)
{
$query = "SELECT * FROM proctee";
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
