<div id="page-wrapper">

  <div class="container-fluid">

    <div class="col-md-12">

      <div class="row">
        <h1 class="page-header">Add User</h1>
      </div>

      <form action="" method="post" enctype="multipart/form-data">

        <div class="col-md-8">



          <!-- User Image -->          
          <div class="form-group">
            <label for="imagem">User Image</label>
            <input type="file" name="image">
          </div>



          <!-- name -->
          <div class="form-group">
            <label for="name">Name</label>
            <input type="text" name="name" class="form-control" placeholder="First Name Last Name" required>
          </div>


          <!-- email -->
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" name="email" class="form-control" placeholder="example@email.com" required>
          </div>


          <!-- password -->
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" class="form-control" placeholder="********" required>
          </div>


          <div class="form-group">
            <button class="btn btn-primary" type="submit" name="submit" value="submit">Save</button>            
          </div>


        </div><!--col-md-8-->

      </form>

    </div> <!-- col-md-12 -->

  </div> <!-- /.container-fluid -->

</div> <!-- /#page-wrapper -->




<?php 

add_user();     

?>