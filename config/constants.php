<?php
//Create Constants to Store Non Repeating Values
// define('HOST', 'localhost');
// define('DB_USERNAME', 'root');
// define('DB_PASSWORD', '');
// define('DB_NAME', 'db_wibu');

$conn = mysqli_connect('localhost', 'root', '', 'db_wibu') or die(mysqli_error($conn)); //Database Connection