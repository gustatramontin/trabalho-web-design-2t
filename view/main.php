<?php 

class View {
    function show_main($news, $domain) {
        require 'view/pages/main.php';

    }

    function show_class_page($teachers, $students, $domain) {
        require 'view/pages/turmas.php';
    }

    function show_teaching_plan_page($activities, $domain) {
        require 'view/pages/plano-de-ensino.php';
    }
}