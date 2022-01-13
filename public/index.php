<?php
try {
    include __DIR__ . '/../includes/autoload.php';
    $route = ltrim(strtok($_SERVER['REQUEST_URI'], '?'), '/');

    $entryPoint = new \Generic\EntryPoint($route, new \Ucc\UccAppRoutes(), $_SERVER['REQUEST_METHOD']);
    $entryPoint->run();
} catch(PDOException $e){
    $title = 'Database Error';
    $output = 'A database error has occured: ' . $e->getMessage() . ' in ' . $e->getFile() . ' on ' . $e->getLine();
}
