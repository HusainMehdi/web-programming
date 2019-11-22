<?php
//Create Connection
require('db.php');
//create query
$query = "SELECT * FROM `grid`;";
//Get Result
$result = mysqli_query($conn, $query);
//Fetch Data
$grid = mysqli_fetch_all($result, MYSQLI_ASSOC);
//Takes the result returned from the database and formats it into JSON
echo json_encode($grid);
