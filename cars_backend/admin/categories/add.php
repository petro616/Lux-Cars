<?php
include "../../connect.php";
$name = filterRequest("name");
$imagename = imageUpload("../../upload/categories" , "files");
$data = array(
"categories_name" => $name,
"categories_image" =>  $imagename,
);
insertData("categories" , $data);
?>