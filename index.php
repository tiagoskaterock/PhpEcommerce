<?php require_once("resources/config.php") ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<?php

  // Pagination
  $per_page = 2;

  if (isset($_GET['page'])) {
    $page = $_GET['page'];
  }
  else {
    $page = "";
  }

  if ($page == "" || $page == 1) {
    $page_1 = 0;
  }
  else {
    $page_1 = ($page * $per_page) - $per_page;
  }      

  $count = get_total_products_in_stock();

  $count = ceil($count / $per_page);
  // end pagination  

  // query with pagination with products in stock only
  $query = query("SELECT * FROM products WHERE quantity > 0 ORDER BY id DESC LIMIT $per_page OFFSET $page_1");

  confirm($query);

?>


<!-- Page Content -->
<div class="container">

  <div class="row">

    <?php include(TEMPLATE_FRONT . DS . "side_nav.php") ?>

    <div class="col-md-9">

      <div class="row carousel-holder">

        <div class="col-md-12">

          <?php include(TEMPLATE_FRONT . DS . "slider.php") ?>

        </div>

      </div>


      <div class="row">

        <?php show_pagination() ?>

        <h1>
          <?php 
            if (isset($_SESSION['product_1'])) {
              echo $_SESSION['product_1'];
            } ?>
        </h1>

        
        <?php

          while($row = fetch_array($query)) {
            ?>
              <div class="col-sm-4 col-lg-4 col-md-4">
                <div class="thumbnail">
                  <a href="item?id=<?= $row['id'] ?>">
                    <img src="uploads/<?= $row['image'] ?>" alt="<?= $row['title'] ?>">
                  </a>
                  <div class="caption">
                    <h4><a href="item?id=<?= $row['id'] ?>"><?= $row['title'] ?></a>
                    <h4>$ <?= $row['price'] ?></h4>
                    <h5>In stock: <?= $row['quantity'] ?></h5>
                    </h4>
                    <p><?= substr($row['description'], 0, 90)  ?> ...</p>

                    <a class="btn btn-primary" href="resources/cart?add=<?= $row['id'] ?>">Add to Cart</a>
                  </div>
                </div>
              </div>

            <?php

          }

        ?>

      </div><!-- row -->

      <?php show_pagination() ?>

    </div><!-- col-md-9 -->

  </div><!-- row -->

</div><!-- /.container -->

<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>