<?php
include('database_connection.php');
if($_POST['action'] == 'edit')
{
$data = array(
':SNo'  => $_POST['SNo'],
':RegistrationNumber'  => $_POST['RegistrationNumber'],
':Name'  => $_POST['Name'],
':Email'   => $_POST['Email'],
':Phone'    => $_POST['Phone']
);
$query = "
UPDATE proctee
SET Name = :Name,
RegistrationNumber = :RegistrationNumber,
Email = :Email,
Phone =:Phone
WHERE SNo = :SNo
";
$statement = $connect->prepare($query);
$statement->execute($data);
echo json_encode($_POST);
}
if($_POST['action'] == 'delete')
{
$query = "
DELETE FROM proctee
WHERE SNo = '".$_POST["SNo"]."'
";
$statement = $connect->prepare($query);
$statement->execute();
echo json_encode($_POST);
}
?>
