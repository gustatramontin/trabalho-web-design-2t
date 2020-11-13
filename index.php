<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require 'controller/main.php';
$controller = new Controller();

if (!isset($_GET['page'])) {
    $controller->show_main_page();
} else {
    $controller->show_page($_GET['page']);
}

?>