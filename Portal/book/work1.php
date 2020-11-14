<?php
include('database_connection.php');
if($_POST['action'] == 'edit')
{
$data = array(
':SNo'  => $_POST['SNo'],
':test_date'    => $_POST['test_date'],
':test_time'  => $_POST['test_time']
);
$query = "
UPDATE test
SET test_date = :test_date,
test_time =:test_time
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
