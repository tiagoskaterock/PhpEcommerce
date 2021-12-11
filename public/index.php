<?php require_once("../resources/config.php") ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>


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

        <h1>
          <?php 
            if (isset($_SESSION['product_1'])) {
              echo $_SESSION['product_1'];
            } ?>
        </h1>

        <?php get_products() ?>

      </div><!-- row -->

    </div><!-- col-md-9 -->

  </div><!-- row -->

</div><!-- /.container -->


<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>