<?php
namespace Ucc;
use Generic\DatabaseTable;
class UccAppRoutes implements \Generic\Routes {
    private $authentication;
    private $booked_venue_table;
    private $courses_table;
    private $days_table;
    private $duration_table;
    private $lecturers_table;
    private $registered_courses_table;
    private $times_table;
    private $venues_table;   

    public function __construct(){
        include __DIR__ . '/../../includes/DatabaseConnection.php';
        $this->lecturers_table = new \Generic\DatabaseTable($pdo_osis_auth, 'users', 'id');
        $this->authentication = new \Generic\Authentication($this->lecturers_table, 'username', 'password');
        $this->booked_venue_table = new \Generic\DatabaseTable($pdo, 'booked_venues', 'id');
        $this->courses_table = new \Generic\DatabaseTable($pdo_osis, 'course_db', 'courseid'); 
        $this->days_table = new \Generic\DatabaseTable($pdo, 'day', 'day_id');
        $this->duration_table = new \Generic\DatabaseTable($pdo, 'duration', 'duration_id');
        $this->registered_courses_table = new \Generic\DatabaseTable($pdo_osis, 'regdata', 'regid');
        $this->time_table = new \Generic\DatabaseTable($pdo, 'times', 'time_id');
        $this->venues_table = new \Generic\DatabaseTable($pdo, 'venue', 'venue_id');
    }
    public function getRoutes():array  {
        $controller = new \Ucc\Controllers\Timetable(
        $this->booked_venue_table, 
        $this->courses_table, 
        $this->days_table, 
        $this->duration_table, 
        $this->registered_courses_table, 
        $this->time_table, 
        $this->venues_table,
        $this->authentication);
        
        $loginController = new \Ucc\Controllers\Login($this->authentication);
        $routes = [
            '' => [
                'GET' => [
                    'controller' => $controller,
                    'action' => 'home'
                ]
            ],
            'login' => [
                'POST' => [
                    'controller' => $loginController,
                    'action' => 'processLogin'
                ],
                'GET' => [
                    'controller' => $loginController,
                    'action' => 'loginForm'
                ]
                ],
    
            'success' => [
                'GET' => [
                    'controller' => $loginController,
                    'action' => 'loginSuccess'
                ]
                ],
            'logout' => [
                'GET' => [
                    'controller' => $loginController,
                    'action' => 'logout'
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
                ],
                'login' => true
                ],
            'mytimetable' => [
                'POST' => [
                    'controller' => $controller,
                    'action' => 'removeBooking'
                ],
                'GET' => [
                    'controller' => $controller,
                    'action' => 'getData'
                ],
                'login' => true
            ],
            'print' => [
                'GET' => [
                    'controller' => $controller,
                    'action' => 'printPdf'
                ],
                'login' => true
                ]
        ];
        return $routes;
    }
    public function getAuthentication():\Generic\Authentication{
        return $this->authentication;
    }
}