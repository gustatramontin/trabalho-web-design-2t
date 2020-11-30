<!DOCTYPE html>
<html lang="en">
<head>
    <?php require "view/templates/head.php"?>
    <link rel="stylesheet" href="view/css/opinions.css">
    <title>Lógica de Programação IFC - Opiniões</title>
</head>
<body>
    <div class="root">
        <?php 
            require 'view/templates/header.html';
            require 'view/templates/nav.php';
        ?>
        <section class="opinions">
        <?php
                
                foreach($opinions as $op) {
                    echo "<div class=\"opinion\">
                        <h3>${op['student_name']}</h3>
                        <p>${op['opinion']}</p>
                    </div>";
                }
            
            ?>
        </section>
        <?php require "view/templates/footer.php"?>
    </div>
</body>
</html>