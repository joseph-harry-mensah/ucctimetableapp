<?php
namespace Ucc\Controllers;
use Generic\DatabaseTable;
class Timetable {
    private $bookingsTable;

    public function __construct(\Generic\DatabaseTable $bookingsTable){
        $this->bookingsTable = $bookingsTable;
    }

    public function home(){
        return ['title' => 'UCC Lecture Timetable', 'template' => 'home.html.php'];
    }
}