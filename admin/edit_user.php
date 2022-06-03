<?php 

if (isset($_GET['id'])) {
  $id = $_GET['id'];
}
else {
  header("Location: ?page=users");
  die();
}

if (!isset($id)) {
  header("Location: ?page=users");
  die();
}

$query = query("SELECT * FROM users WHERE id = '$id'");

confirm($query);

if ($query->num_rows < 1) {
  header("Location: ?page=users");
}

while ($row = fetch_array($query)) {       

  ?>
  <div id="page-wrapper">

    <div class="container-fluid">

      <div class="col-md-12">

        <div class="row">
          <h1 class="page-header">Edit User</h1>
        </div>

        <form action="" method="post" enctype="multipart/form-data">

          <div class="col-md-8">


            <input type="hidden" name="id" value="<?= $row['id'] ?>">


            <!-- User Image -->          
            <div class="form-group">
              <label for="imagem">User Image</label>
              <input type="file" name="image">
            </div>



            <!-- name -->
            <div class="form-group">
              <label for="name">Name</label>
              <input type="text" name="name" class="form-control" placeholder="First Name Last Name" required value="<?= $row['name'] ?>">
            </div>


            <!-- email -->
            <div class="form-group">
              <label for="email">Email</label>
              <input type="email" name="email" class="form-control" placeholder="example@email.com" required value="<?= $row['email'] ?>">
            </div>


            <!-- password -->
            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" name="password" class="form-control" placeholder="********" required value="<?= $row['name'] ?>">
            </div>


            <div class="form-group">
              <button class="btn btn-primary" type="submit" name="submit" value="submit">Update</button>            
            </div>


          </div><!--col-md-8-->



          <div class="col-md-4">
            <!-- sem imagem -->
            <?php if ($row['image'] == ''): ?>
              <img class="admin-user-thumbnail user_image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Breezeicons-actions-22-im-user.svg/1200px-Breezeicons-actions-22-im-user.svg.png" alt="" height="150px">

            <!-- com imagem -->
            <?php else: ?>
              <img class="admin-user-thumbnail user_image" src="<?= $row['image'] ?>" alt="" height="150px">
            <?php endif ?>           
          </div>

        </form>

      </div> <!-- col-md-12 -->

    </div> <!-- /.container-fluid -->

  </div> <!-- /#page-wrapper -->

  <?php

}

?>





<?php 

  update_user();     

?>