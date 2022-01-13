<?php
namespace Ucc;
use Generic\DatabaseTable;
class UccAppRoutes implements \Generic\Routes {
    public function getRoutes()  {
        include __DIR__ . '/../../includes/DatabaseConnection.php';
        $bookings_table = new \Generic\DatabaseTable($pdo ,'bookings', 'id');
        $controller = new \Ucc\Controllers\Timetable($bookings_table);
        $routes = [
            '' => [
                'GET' => [
                    'controller' => $controller,
                    'action' => 'home'
                ]
            ]
        ];
        return $routes;
    }
}