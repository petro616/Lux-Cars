<?php
include "../../connect.php";

$itemsid = filterRequest("itemsid");
$imagetwo = imageUpload("../../upload/items" , "secondphoto");
$imagethree = imageUpload("../../upload/items" , "thirdphoto");
$imagefourth = imageUpload("../../upload/items" , "fourthphoto");
$imagefivth = imageUpload("../../upload/items" , "fivthphoto");

$data = array(
"products_itemsId" => $itemsid,
"products_image2" => $imagetwo,
"products_image3" => "empty",
"products_image4" => "empty",
"products_image5" => "empty",
);
$data2 = array(
    "products_image3" => $imagethree,
    );
$data3 = array(
    "products_image4" => $imagefourth,
    );
$data4 = array(
    "products_image5" => $imagefivth,
    );

if($imagetwo != "empty"){
    insertData("products" , $data);
} 
if($imagethree != "empty"){
    updateData("products" , $data2 , "products_itemsId = $itemsid");
}  
if($imagefourth != "empty"){
    updateData("products" , $data3 , "products_itemsId = $itemsid");
}  
if($imagefivth != "empty"){
    updateData("products" , $data4 , "products_itemsId = $itemsid");
}  

?>