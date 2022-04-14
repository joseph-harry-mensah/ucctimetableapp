<?php
namespace Ucc\Controllers;
class Login {
   private $authentication;

   function __construct($authentication){
       $this->authentication = $authentication;
   }
   public function processLogin(){
       if ($this->authentication->login($_POST['username'], $_POST['password'])){
           header('location: /success'); 
       } else {
            return ['title' => 'Login', 'template' => 'login.html.php'];
       }
   }

    public function loginForm(){
        return ['title' => 'Login into your account', 'template' => 'login.html.php'];
    }

    public function loginSuccess(){
        return ['title' => 'Success', 'template' => 'login_success.html.php'];
    }

    public function logout (){
        session_unset();
        return ['title' => 'Welcome to the UCC Timetable Database.', 'template' => 'home.html.php'];
    }
}