<?php
include "../../connect.php";
$itemsid = filterRequest("itemsid");
$imagename = filterRequest("imagename");
$imagetwo = filterRequest("imagetwo");
$imagethree = filterRequest("imagethree");
$imagefour = filterRequest("imagefour");
$imagefive = filterRequest("imagefive");
deleteFile("../../upload/items" , $imagename);
deleteFile("../../upload/items" , $imagetwo);
deleteFile("../../upload/items" , $imagethree);
deleteFile("../../upload/items" , $imagefour);
deleteFile("../../upload/items" , $imagefive);
deleteData("cars" , "cars_id  = $itemsid");
//deleteData("products" , "products_itemsId  = $itemsid" , false);
?>