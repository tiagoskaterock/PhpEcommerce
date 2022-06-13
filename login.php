<?php require_once("resources/templates/front/header.php") ?>

<!-- Page Content -->
<div class="container">

  <header>
    <h1 class="text-center">Login</h1>

    <p class="bg-warning p-2 text-center"><?php display_message() ?></p>

    <div class="col-sm-4 col-sm-offset-5">         
      <form class="" action="" method="post">

       <?php login_user() ?>

        <div class="form-group"><label for="">
          Username<input type="text" name="name" class="form-control"></label>
        </div>
        <div class="form-group"><label for="password">
          Password<input required type="password" name="password" class="form-control"></label>
        </div>

        <div class="form-group">
          <input required type="submit" name="submit" class="btn btn-primary" >
        </div>
      </form>
    </div>  


  </header>


</div>

</div>
<!-- /.container -->


<?php footer_front() ?>


