<?php
$dsn = "mysql:host=localhost;dbname=fluttertest";
$user = "root";
$pass = "root";
$option = array(
    PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES UTF8"
);
try {
    $con = new PDO($dsn,$user,$pass,$option);
    $con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

}catch(PDOException $e) {
    echo 'Failed to connect' . $e->getMessage();
}

?>