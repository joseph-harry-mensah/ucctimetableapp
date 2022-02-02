<?php
namespace Ucc;
use Generic\DatabaseTable;
class UccAppRoutes implements \Generic\Routes {
    private $bookedVenuesTable;
    private $courses_table;
    private $days_table;
    private $duration_table;
    private $registered_courses_table;
    private $times_table;
    private $venues_table;

    public function __construct(){
        include __DIR__ . '/../../includes/DatabaseConnection.php';
        $this->bookedVenuesTable = new \Generic\DatabaseTable($pdo, 'booked_venues', 'id');
        $this->courses_table = new \Generic\DatabaseTable($pdo, 'course_db', 'courseid');
        $this->days_table = new \Generic\DatabaseTable($pdo, 'day', 'day_id');
        $this->duration_table = new \Generic\DatabaseTable($pdo, 'duration', 'duration_id');
        $this->registered_courses_table = new \Generic\DatabaseTable($pdo, 'regdata', 'regid');
        $this->times_table = new \Generic\DatabaseTable($pdo, 'times', 'time_id');
        $this->venues_table = new \Generic\DatabaseTable($pdo, 'venue', 'venue_id');
    }
    public function getRoutes()  {
        $controller = new \Ucc\Controllers\Timetable($this->bookedVenuesTable, $this->courses_table, $this->days_table, $this->duration_table, $this->registered_courses_table, $this->times_table, $this->venues_table);

        $routes = [
            '' => [
                'GET' => [
                    'controller' => $controller,
                    'action' => 'home'
                ]
            ],
            'book' => [
                'POST' => [
                    'controller' => $controller,
                    'action' => 'saveEdit'
                ],
                'GET' => [
                    'controller' => $controller,
                    'action' => 'list'
                ]
                ],
            'mytimetable' => [
                'GET' => [
                    'controller' => $controller,
                    'action' => 'getData'
                ]
            ]
        ];
        return $routes;
    }
}