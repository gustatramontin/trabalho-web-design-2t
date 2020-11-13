<?php
require 'main.php';

$controller = new Controller();

$todo = $_GET['W'];

if ($todo=="news") {
    $news = $controller.get_news();

    echo json_encode($news);
}

