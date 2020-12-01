<!DOCTYPE html>
<html lang="pt-br">
<head>
    <?php require "view/templates/head.php"?>
    <link rel="stylesheet" href="view/css/pano-de-ensino.css">
    <title>Lógica de Programação IFC</title>
</head>
<body>
    <div class="root">
        <?php 
            require 'view/templates/header.html';
            require 'view/templates/nav.php';
        ?>
        
        <section class="root__section">
            <h2>Atividades</h2> 
            <div class="buttons">
                <div class="buttons__button buttons__button--left" onclick="soft_slider.moveTo('left', 'P')">➜</div>
                <div class="buttons__button buttons__button--right" onclick="soft_slider.moveTo('right', 'P')">➜</div>
            </div>
            <div class="actv-slider actv-slider--pratice">
                <?php
                
                    foreach($activities as $act) {
                        if ($act['type'] == 'P') {
                            echo "<div class=\"actv-slider__actv\">
                            <a href=\"${act['link']}\">
                            <h3>${act['name']}</h3>
                            <p>Clique Para Acessar</p>
                            <p>${act['start']}/${act['end']}</p>
                            </a>
                            </div>";
                        }
                    }
                
                ?>
                
            </div>

            <h2>Aulas</h2>

            <div class="buttons">
                <div class="buttons__button buttons__button--left" onclick="soft_slider.moveTo('left', 'T')">➜</div>
                <div class="buttons__button buttons__button--right" onclick="soft_slider.moveTo('right', 'T')">➜</div>
            </div>
            <div class="actv-slider actv-slider--lives">
                <?php
                
                    foreach($activities as $act) {
                        if ($act['type'] == 'T') {
                            echo "<div class=\"actv-slider__actv\">
                            <a href=\"https://${act['link']}\">
                            <h3>${act['name']}</h3>
                            <p>Clique Para Acessar</p>
                            <p>${act['start']}</p>
                            </a>
                            </div>";
                        }
                    }
                    
                ?>
                
            </div>

        </section>
        <?php require "view/templates/footer.php"?>
        <script src="view/js/main.js"></script>
    </div>
</body>
</html>
