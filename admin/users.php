<div id="page-wrapper">

  <div class="container-fluid">

    <?php info_message() ?>

    <div class="col-lg-12">

      <h1 class="page-header">
        Users

      </h1>
      <p class="bg-success">
        <?php // echo $message; ?>
      </p>

      <a href="?page=add_user" class="btn btn-primary">Add User</a>


      <div class="col-md-12">

        <table class="table table-hover">
          <thead>
            <tr>
              <th>Id</th>
              <th>Photo</th>
              <th>Username</th>
              <th>Email</th>
            </tr>
          </thead>
          <tbody>

            <?php 

            $query = query("SELECT * FROM users");

            confirm($query);

            while ($row = fetch_array($query)) {  
              $id = $row['id'];
              ?>
              <tr>

                <td><?= $row['id'] ?></td>

                <!-- sem imagem -->
                <?php if ($row['image'] == ''): ?>
                  <td>
                    <img class="admin-user-thumbnail user_image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Breezeicons-actions-22-im-user.svg/1200px-Breezeicons-actions-22-im-user.svg.png" alt="" height="20px">
                  </td>  

                <!-- com imagem -->
                <?php else: ?>
                  <td>
                    <img class="admin-user-thumbnail user_image" src="../<?= $row['image'] ?>" alt="" height="20px">
                  </td>
                <?php endif ?>



                <td><?= $row['name'] ?></td>
                <td><?= $row['email'] ?></td>

                <td>
                  <a href="?page=edit_user&id=<?= $id ?>" class="btn btn-sm btn-primary">
                    Edit
                  </a>                                               
                </td>


                <td>
                  <form action="" method="post">
                    <button class="btn btn-sm btn-danger" type="submit" name="delete_user" value="<?= $row['id'] ?>">
                      Delete
                    </button>
                  </form>
                </td>
              </tr>
              <?php

            }      

            ?>

          </tbody>

        </table> <!--End of Table-->


      </div>


    </div>


  </div>
  <!-- /.container-fluid -->

</div>
<!-- /#page-wrapper -->

<?php delete_user() ?>
