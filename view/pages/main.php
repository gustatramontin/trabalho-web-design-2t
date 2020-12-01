<!DOCTYPE html>
<html lang="pt-br">
<head>
    <?php require "view/templates/head.php"?>
    <link rel="stylesheet" href="view/css/indexpage.css">
    <title>Lógica de Programação IFC</title>
</head>
<body>
    <div class="root">
        <?php 
            require 'view/templates/header.html';
            require 'view/templates/nav.php';
        ?>
        
        <section class="root__section">
            <div class="about">
                <img src="view/img/codding.jpg" alt="Tela de um computador com código">
                <p>Essa matéria é destinada a ensinar os principios básicos da programação utilizando a linguagem Python para botar na prática os conhecimentos. Essa matéria é exclusiva dos primeiros ano de informática.</p>
            </div>
            <div class="news">
            <h2>Últimas Notícias</h2>

            <div class="news__slide">

                <div class="slide__buttons">
                    <div class="buttons__btn" onclick="static_slider.moveTo('left')">&#10094;</div>
                    <div class="buttons__btn buttons__btn--right" onclick="static_slider.moveTo('right')">&#10094;</div>
                </div>
                <?php 

                    foreach ($news as $new) {
                        echo "<div class=\"slide__new\"> 
                        <h3>${new['title']}</h3>
                        <p>
                        ${new['content']}
                        <br><br>
                        ${new['date']}
                        </p>
                        </div>";
                    }
                ?>
            </div>
            </div>
        </section>
        <?php require "view/templates/footer.php"?>
    </div>
    <script src="view/js/main.js">
    </script>
</body>
</html>
