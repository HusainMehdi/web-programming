
<?php

// Connect to a database
require('db.php');

//Check for POST variable
 
     $query = "SELECT * FROM `gridcells`;";

//Get Result
$result = mysqli_query($conn, $query);

//Fetch Data
$cell = mysqli_fetch_all($result, MYSQLI_ASSOC);

//Takes the result returned from the database and formats it into JSON
echo json_encode($cell);