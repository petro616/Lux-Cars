<?php
include "../../connect.php";

$carName = filterRequest("carName");
$imagename = imageUpload("../../upload/items" , "files");
$price = filterRequest("price");
$desc = filterRequest("desc");
$state = filterRequest("carsState");
$region = filterRequest("carsRegion");
$type = filterRequest("carsType");
$gear = filterRequest("carsGear");
$createYear = filterRequest("carsCreateYear");
$color = filterRequest("carsColor");
$diesel = filterRequest("carsDiesel");
$howCC = filterRequest("carsHowCC");
$colorState = filterRequest("carsColorState");
$surface = filterRequest("carsSurface");
$carThing = filterRequest("carsThing");
$carKilometrage = filterRequest("carsKilometrage");
$isFeatured = filterRequest("carsIsFeatured");
$catid = filterRequest("catid");
$data = array(
"cars_name" => $carName,
"cars_image" =>  $imagename,
"cars_price" =>  $price,
"cars_description" =>  $desc,
"cars_state" =>  $state,
"cars_region" =>  $region,
"cars_type" =>  $type,
"cars_gear" =>  $gear,
"cars_create_year" =>  $createYear,
"cars_color" =>  $color,
"cars_diesel" =>  $diesel,
"cars_how_cc" =>  $howCC,
"cars_color_state" =>  $colorState,
"cars_surface" =>  $surface,
"cars_thing" =>  $carThing,
"cars_kilometrage" => $carKilometrage,
"cars_isfeatured" =>  $isFeatured,
"cars_catego" =>  $catid,
);
insertData("cars" , $data);
?>