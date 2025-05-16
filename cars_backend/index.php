<?php
include "connect.php";
$stmt = $con->prepare("SELECT * FROM categories");
$stmt->execute();
$data = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($data);

?>