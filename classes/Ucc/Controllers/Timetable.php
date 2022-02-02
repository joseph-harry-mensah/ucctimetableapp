<?php
namespace Ucc\Controllers;
use Generic\DatabaseTable;
class Timetable {
    private $bookedVenuesTable;
    private $coursesTable;
    private $dayTable;
    private $durationTable;
    private $registeredCoursesTable;
    private $timeTable;
    private $venuesTable;

    public function __construct(\Generic\DatabaseTable $bookedVenuesTable, \Generic\DatabaseTable $coursesTable, \Generic\DatabaseTable $dayTable, \Generic\DatabaseTable $durationTable, \Generic\DatabaseTable $registeredCoursesTable, \Generic\DatabaseTable $timeTable, \Generic\DatabaseTable $venuesTable){
        $this->bookedVenuesTable = $bookedVenuesTable;
        $this->coursesTable = $coursesTable;
        $this->dayTable = $dayTable;
        $this->durationTable = $durationTable;
        $this->registeredCoursesTable = $registeredCoursesTable;
        $this->timeTable = $timeTable;
        $this->venuesTable = $venuesTable;
    }

    public function home(){
        return ['title' => 'UCC Lecture Timetable', 'template' => 'home.html.php'];
    }

    public function getData(){
        $booked_venues = $this->bookedVenuesTable->findAll();
        return ['title' => 'Booked Venues', 'template' => 'mytimetable.html.php', 'variables' => ['booked_venues' => $booked_venues ?? null]];
    }
    public function list(){
        $registered_courses = $this->registeredCoursesTable->findAll('courseid');
       
        $courses = [];
        foreach($registered_courses as $registered_course){
            $courses[] = $this->coursesTable->findById('courseid', $registered_course['courseid']);
        }
        // Remember to take out
        // $total = $this->registeredCoursesTable->total('courseid');
        $booked_data = $this->bookedVenuesTable->findAll();
        // remember to take this out ------- & -------
        // $courses[] = array_diff($courses['title], $booked_data['title']);
        $some_array = ['english', 'maths', 'french', 'social'];
        $another_array = ['english', 'science', 'french', 'sych'];

        $diff = array_intersect($some_array, $another_array);
        // var_dump($diff);
         // remember to take this out ------- & ^-------
       
        $days = $this->dayTable->findAll();
        $duration = $this->durationTable->findAll();
        $times = $this->timeTable->findAll();
        $venues = $this->venuesTable->findAll();
        return ['title' => 'Book a venue', 'template' => 'book.html.php', 'variables' => ['courses' => $courses ?? null, 'booked_data' => $booked_data ?? null, 'days' => $days ?? null, 'duration' => $duration, 'times' => $times ?? null,'venues' => $venues ?? null]];
    }

    public function saveEdit(){
        $booked_venues_data = $_POST['book'];
        $course_data = explode("|", $booked_venues_data['title']);
        $course_title = $course_data[0];
        $course_id = $course_data[1];
        $course_code = $course_data[2];
        $venue_data = explode("|", $booked_venues_data['venue']);
        $venue_title = $venue_data[0];
        $venue_id = $venue_data[1];
        $booked_venues = [];
        $time = $booked_venues_data['time'];
        $credits = $booked_venues_data['duration'];
        $parts = explode(":", $time)[0];
        $total_time = $parts + $credits;
        $new_time = $total_time . ':' . explode(":", $time)[1];
        // $booked_venues['start_time'] = $time;
        // $booked_venues['end_time'] = $new_time;
        $booked_venues['title'] = $course_title;
        $booked_venues['venue_id'] = $venue_id;
        $booked_venues['duration'] = $booked_venues_data['duration'];
        $booked_venues['venue'] = $venue_title;
        $booked_venues['course_id'] = $course_id;
        $booked_venues['course_code'] = $course_code;
        $booked_venues['slot'] = $time . '-'.$new_time;
        $booked_venues['date_booked'] = new \DateTime();
        $booked_venues['lecturer_id'] = 12250;
        $booked_venues['day'] = $booked_venues_data['day'];
        $session = $this->registeredCoursesTable->findById('courseid', $course_id);

        foreach($session as $sess){
            $booked_venues['session'] = $sess['session'];
        }
        $booked_venues['lecturer_name'] = "Mr. Elliot Attipoe";
        $this->bookedVenuesTable->insert($booked_venues);
        return ['title' => 'Success', 'template' => 'success.html.php'];
    }
    public function edit(){

    }
}