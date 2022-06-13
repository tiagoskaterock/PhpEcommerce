<?php require_once("resources/templates/front/header.php") ?>

<!-- Page Content -->
<div class="container">

  <!-- Jumbotron Header -->
  <header class="jumbotron hero-spacer">
    <h1>Welcome to our Shop!</h1>
  </header>

  <hr>

  <!-- Page Features -->
  <div class="row text-center">

    <?php get_products_in_shop_page() ?>
        
  </div>
  <!-- /.row -->

  <?php footer_front() ?>