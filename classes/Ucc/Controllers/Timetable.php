<?php
namespace Ucc\Controllers;
use Generic\DatabaseTable;
class Timetable {
    private $authentication;
    private $bookedVenuesTable;
    private $coursesTable;
    private $dayTable;
    private $durationTable;
    private $registeredCoursesTable;
    private $timeTable;
    private $venuesTable;

    public function __construct(\Generic\DatabaseTable $bookedVenuesTable, \Generic\DatabaseTable $coursesTable, \Generic\DatabaseTable $dayTable, \Generic\DatabaseTable $durationTable, \Generic\DatabaseTable $registeredCoursesTable, \Generic\DatabaseTable $timeTable, \Generic\DatabaseTable $venuesTable, \Generic\Authentication $authentication){
        $this->authentication = $authentication;
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
        $lecturer = $this->authentication->getUser();
        $session = $this->registeredCoursesTable->findAll();
        $booked_venues = $this->bookedVenuesTable->findById('username', $lecturer['username']);
        return ['title' => 'Booked Venues', 'template' => 'mytimetable.html.php', 'variables' => ['booked_venues' => $booked_venues ?? null, 'session' => $session,'first_name' => $lecturer['fname']]];
    }
    public function list(){       
        $lecturer = $this->authentication->getUser();
        $courseData = $this->coursesTable->findByParams('course_db', 'regdata', 'uccttdb.booked_venues', 'departments', 'courseid', 'title', 'code', 'credits', 'session','deptid',$lecturer['deptid']);
        $booked_data = $this->bookedVenuesTable->findAll();
    
        $days = $this->dayTable->findAll();
        $duration = $this->durationTable->findAll();
        $times = $this->timeTable->findAll();
        $venues = $this->venuesTable->findByConstraints('venue', 'booked_venues', 'venue_id', 'slot', 'venue_code');
        return ['title' => 'Book a venue', 'template' => 'book.html.php', 'variables' => ['courses' => $courseData ?? null, 'booked_data' => $booked_data ?? null, 'days' => $days ?? null, 'duration' => $duration, 'times' => $times ?? null,'venues' => $venues ?? null]];
    }

    public function saveEdit(){
        $lecturer = $this->authentication->getUser();
        $booked_venues_data = $_POST['book'];
        $course_data = explode("|", $booked_venues_data['title']);
        $course_id = $course_data[0];
        $course_code = $course_data[1];
        $course_title = $course_data[2];
        $venue_data = explode("|", $booked_venues_data['venue']);
        $venue_title = $venue_data[0];
        $venue_id = $venue_data[1];
        $booked_venues = [];
        $time = $booked_venues_data['time'];
        $credits = $booked_venues_data['duration'];
        $parts = explode(":", $time)[0];
        $total_time = $parts + $credits;
        $new_time = $total_time . ':' . explode(":", $time)[1];
        $booked_venues['title'] = $course_title;
        $booked_venues['venue_id'] = $venue_id;
        $booked_venues['duration'] = $booked_venues_data['duration'];
        $booked_venues['venue'] = $venue_title;
        $booked_venues['courseid'] = $course_id;
        $booked_venues['course_code'] = $course_code;
        $booked_venues['slot'] = $time . '-'.$new_time;
        $booked_venues['date_booked'] = new \DateTime();
        $booked_venues['username'] = $lecturer['username'];
        $booked_venues['day'] = $booked_venues_data['day'];
        $session = $this->registeredCoursesTable->findById('courseid', $course_id);
        foreach($session as $sess){
            $booked_venues['session'] = $sess['session'];
        }
        $booked_venues['lecturer_name'] = $lecturer['fname'] . ' ' . $lecturer['lname'];
        $this->bookedVenuesTable->insert($booked_venues);
        return ['title' => 'Success', 'template' => 'success.html.php'];
    }
    public function edit(){

    }
    public function printPdf(){
        $lecturer = $this->authentication->getUser();
        $data = $this->bookedVenuesTable->findById('username', $lecturer['username']);
        $session = $this->registeredCoursesTable->findAll();

        array_merge($data, $session);
        $pdf = new \Ucc\Controllers\PdfGenerator();
        $pdf->AliasNbPages();
        $pdf->addPage('L','A4', 0);
        $pdf->headers($data);
        $pdf->headerTable();
        $pdf->tableBody($data);
        $pdf->Output();
    }
    public function confirmDelete(){
        $flag = $_POST['booking'];
        return ['title'=>'Confirm Delete', 'template' => 'confirm.html.php', 'variables' => ['bookingData' => $flag]];
      
    }
    public function deleteYes(){        
          if (isset($_POST['deleteYes'])){
            $this->removeBooking($_POST['deleteYes']);
            header('location: /mytimetable');
        } 
    }

    private function removeBooking($value){
        $this->bookedVenuesTable->delete($value);
        header('location: /mytimetable');
    }
}