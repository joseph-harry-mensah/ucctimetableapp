<?php
namespace Ucc\Controllers;
include __DIR__ . '/../../Generic/fpdf/fpdf.php';
use FPDF;
class PdfGenerator extends FPDF {
    function header(){}
    function headers($data){
        $this->image(__DIR__.'/../../../public/assets/images/logo.png', 130, 25, -300);
        $this->setFont('Arial', 'B', 14);
        $this->Cell(276, 5, 'UCC LECTURE TIMETABLE', 0, 0, 'C');
        $this->setTextColor(255, 0, 0);
        $this->Ln();
        $this->setFont('Times', '', 12);
        $this->Cell(276, 10, 'Timetable for Semester ' .str_split($data[0]['session'])[2]. ', '. str_split($data[0]['session'],4)[0] . '/'. strval(intval(str_split($data[0]['session'],4)[0]) + 1).' Academic year.', 0, 0, 'C');
        $this->Ln(50);
    }
   
    function footer(){
        $this->setY(-15);
        $this->setFont('Arial', '', 8);
        $this->Cell(0, 10, 'Page '. $this->PageNo().'/{nb}', 0, 0, 'C');
    }
    function headerTable(){
        $this->setFillColor(255, 0, 0);
        $this->setTextColor(0);
        $this->setFont('Times', 'B', 12);
        $this->Cell(30, 10, 'Code', 1,0,'L');
        $this->Cell(130, 10, 'Title', 1, 0, 'L');
        $this->Cell(50, 10, 'Venue', 1, 0, 'L');
        $this->Cell(40, 10, 'Day', 1, 0, 'L');
        $this->Cell(30, 10, 'Time', 1, 0, 'L');
        $this->Ln();
    }
    function tableBody($data){
        $this->setFont('Times', '', 12);
        $this->setTextColor(0);
        foreach($data as $dat){
            $this->Cell(30, 10, $dat['course_code'], 1,0,'L');
            $this->Cell(130, 10, substr($dat['title'], 0,50), 1, 0, 'L');
            $this->Cell(50, 10, $dat['venue'], 1, 0, 'L');
            $this->Cell(40, 10, $dat['day'], 1, 0, 'L');
            $this->Cell(30, 10, $dat['slot'], 1, 0, 'L');
            $this->Ln();
        }
    }
}