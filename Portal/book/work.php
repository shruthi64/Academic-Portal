<?php
include('database_connection.php');
if($_POST['action'] == 'edit')
{
$data = array(
':SNo'  => $_POST['SNo'],
':Marks'    => $_POST['Marks']
);
$query = "
UPDATE test
SET Marks = :Marks
WHERE SNo = :SNo
";
$statement = $connect->prepare($query);
$statement->execute($data);
echo json_encode($_POST);
}
if($_POST['action'] == 'delete')
{
$query = "
DELETE FROM test
WHERE SNo = '".$_POST["SNo"]."'
";
$statement = $connect->prepare($query);
$statement->execute();
echo json_encode($_POST);
}
?>
