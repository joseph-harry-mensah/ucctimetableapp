<?php
namespace Generic;
class EntryPoint {
    private $route;
    private $routes;
    private $method;

    public function __construct(string $route, \Ucc\UccAppRoutes $routes, string $method){
        $this->route = $route;
        $this->routes = $routes;
        $this->method = $method;
        $this->checkUrl();
    }

    private function checkUrl(){
        if ($this->route !== strtoupper($this->route)){
            http_response_code(301);
            header('location: '.strtolower($this->route));
        }
    }
    private function loadTemplates($templateFile, $variables = []){
        extract($variables);
        ob_start();
        include __DIR__ .'/../../templates/'.$templateFile;
        return ob_get_clean();
    } 
    public function run(){
        $routes = $this->routes->getRoutes();
        $action = $routes[$this->route][$this->method]['action'];
        $controller = $routes[$this->route][$this->method]['controller'];
        $page = $controller->$action();

        if(isset($page['variable'])){
            $output = $this->loadTemplates($page['variable'], $page['template']);
        } else {
            $output = $this->loadTemplates($page['template']);
        }
        include __DIR__ . '/../../templates/layout.html.php';
    }
}