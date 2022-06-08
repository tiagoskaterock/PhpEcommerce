<?php 
    $products = get_all_products();

    // mostrar a classe active apenas uma vez
    $counter = 0;
?>

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!--
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>
-->

    <div class="carousel-inner">

        <?php 
            foreach ($products as $product) {
                ?>
                <div class="item <?php if ($counter == 0): ?>
                    active
                <?php endif ?>">
                    <div style="display: flex; overflow-y: hidden; height: 300px; justify-content: center">
                        <a href="item?id=<?= $product['id'] ?>">
                            <img class="" src="uploads/<?= $product['image'] ?>" alt="<?= $product['title'] ?>" style="height: 300px !important">
                        </a>
                    </div>
                    <div class="carousel-caption d-none d-md-block">
                        <p><?= $product['title'] ?></p>
                    </div>
                </div>

                <?php
                $counter++;
            }
        ?>

    </div>

    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>

</div>