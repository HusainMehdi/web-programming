<?php
//Create Connection
require('db.php');
//create query
$query = "SELECT NOW();";
//Get Result
$result = mysqli_query($conn, $query);
//Fetch Data
$time = mysqli_fetch_assoc($result);
//Takes the time returned by the database and formats the array into a string
echo implode(" ", $time);
