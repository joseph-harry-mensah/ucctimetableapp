<?php
try {
    $pdo = new PDO('mysql:host=localhost;dbname=uccttdb;charset=utf8', 'dee', 'secret');
    $pdo_osis = new PDO('mysql:host=localhost;dbname=osis;charset=utf8', 'dee', 'secret');
    $pdo_osis_auth = new PDO('mysql:host=localhost; dbname=osisauth;charset=utf8', 'dee', 'secret');
    /*$pdo2 = new PDO('mysql:host=localhost;dbname=osisauth;charset=utf8', 'uccttuser', 'secret');*/
    /*$pdo3 = new PDO('mysql:host=localhost;dbname=ucctimetable;charset=utf8', 'uccttuser', 'secret');*/
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo_osis->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo_osis_auth->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e){
    $title = 'A database error has occcured';
    $output = 'The applicaiton has failed to connect to the database: ' . $e->getMessage() . ' in ' . $e->getFile() . ' on ' . $e->getLine();
}