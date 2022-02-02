<?php
try {
    $pdo = new PDO('mysql:host=localhost;dbname=uccdatabase;charset=utf8', 'dee', 'secret');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e){
    $title = 'A database error has occcured';
    $output = 'The applicaiton has failed to connect to the database: ' . $e->getMesage() . ' in ' . $e->getFile() . ' on ' . $e->getLine();
}