<?php
namespace Generic;
interface Routes {
    public function getRoutes():array;
    public function getAuthentication():\Generic\Authentication;
}