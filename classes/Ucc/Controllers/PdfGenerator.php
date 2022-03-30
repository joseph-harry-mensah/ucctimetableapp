<?php
namespace Ucc\Controllers;
include __DIR__ . '/../../Generic/fpdf/fpdf.php';
use FPDF;
class PdfGenerator extends FPDF {
    // private $details;

    // public function __construct(){

    // }
    function header(){
        $this->image(__DIR__.'/../../../public/assets/images/logo.png', 130, 25, -300, 'C');
        $this->setFont('Arial', 'B', 14);
        $this->setTextColor(45, 54, 144);
        $this->Cell(276, 5, 'UCC LECTURE TIMETABLE', 0, 0, 'C');
        $this->setTextColor(255, 0, 0);
        $this->Ln();
        $this->setFont('Times', '', 12);
        $this->Cell(276, 10, 'Timetable for the 2021/2022 Academic year.', 0, 0, 'C');
        $this->Ln(50);
    }
   
    function footer(){
        $this->setY(-15);
        $this->setFont('Arial', '', 8);
        $this->Cell(0, 10, 'Page '. $this->PageNo().'/{nb}', 0, 0, 'C');
    }
    function headerTable(){
        // $this->SetFillColor(255,0,0);
        // $this->SetTextColor(255,0,0);
        // $this->SetDrawColor(128,0,0);
        $this->SetLineWidth(.3);
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
        foreach($data as $dat){
            $this->Cell(30, 10, $dat['course_code'], 1,0,'L');
            $this->Cell(130, 10, $dat['title'], 1, 0, 'L');
            $this->Cell(50, 10, $dat['venue'], 1, 0, 'L');
            $this->Cell(40, 10, $dat['day'], 1, 0, 'L');
            $this->Cell(30, 10, $dat['slot'], 1, 0, 'L');
            $this->Ln();
        }
    }
}