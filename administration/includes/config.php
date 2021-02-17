<?php
define('DB_SERVER','us-cdbr-east-03.cleardb.com');
define('DB_USER','bae772058f461c');
define('DB_PASS' ,'7796a4b3');
define('DB_NAME','heroku_b3d8476f8671abf');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>