<?php

require "model/main.php";
require "view/main.php";

class Controller {
    
    private $config;
    private $model;
    private $view;

    function __construct() {
        $this->config = parse_ini_file('model/config.ini');
        $this->model = new Model();
        $this->view = new View();
    }

    function get_config($config) {
        return $this->config[$config];
    }

    function get_news() {
        $news = $this->model->get_news();

        return $news;
    }

    function show_main_page() {
        $news = $this->get_news();
        $domain = $this->get_config("domain");
        $this->view->show_main($news, $domain);
    }

    function show_page($page) {
        if ($page == "turmas") {
            $domain = $this->get_config("domain");
            $this->show_class_page($domain);
        } elseif ($page == "plano-de-ensino") {
            $activities = $this->model->get_aticvities();
            $domain = $this->get_config("domain");

            $this->view->show_teaching_plan_page($activities, $domain);
        }
    }

    function show_class_page($domain) {
        $teachers = $this->model->get_class_teachers();
        $students = $this->model->get_class_students();

        $this->view->show_class_page($teachers, $students, $domain);
    }
}