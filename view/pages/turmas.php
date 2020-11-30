<!DOCTYPE html>
<html lang="en">
<head>
    <?php require "view/templates/head.php"?>
    <link rel="stylesheet" href="view/css/class.css">
    <title>Turmas - Lógica de Programação IFC</title>
</head>
<body>
    <div class="root">
    <?php
        require 'view/templates/header.html';
        require 'view/templates/nav.php';
    ?>

    <div class="classes">
        <h2>Turma 102 Info</h2>
        <div class="classes__class">
            <h4>Professores</h4>

            <div class="class__people">
            <?php

                foreach($teachers as $teacher) {
                    echo "<div class=\"class__people--person\">
                    <img src=\"view/img/info_102/${teacher['user_name']}.png\">
                    <p>${teacher['real_name']}<br>
                    ${teacher['user_name']}<br>
                    ${teacher['email']}
                    </p>
                    </div>";
                }

            ?>
            </div>


            <h4>Alunos</h4>
            <div class="class__people">
            <?php
                foreach($students as $student) {
                    echo "<div class=\"class__people--person\">
                    <img src=\"view/img/info_102/${student['user_name']}.png\" 
                    onerror=\"this.onerror=null; this.src='view/img/info_102/default.png'\">
                    <p>${student['real_name']}<br>
                    ${student['user_name']}<br>
                    ${student['email']}
                    </p>
                    </div>";
                }
            ?>
            
            </div>
           
        </div>
    
    </div>
    <?php require "view/templates/footer.php"?>
    </div>
</body>
</html>