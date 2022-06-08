<div class="collapse navbar-collapse navbar-ex1-collapse">              

  <ul class="nav navbar-nav side-nav">


    <li class="<?php if (TITULO == 'Dashboard'): ?>
      active
    <?php endif ?>">
      <a href="."><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
    </li>


    <li class="<?php if (TITULO == 'Products'): ?>
      active
    <?php endif ?>">
      <a href="?page=products"><i class="fa-brands fa-product-hunt" aria-hidden="true"></i> View Products</a>
    </li>


    <li class="<?php if (TITULO == 'Add Products'): ?>
      active
    <?php endif ?>">
      <a href="?page=add_product"><i class="fa fa-fw fa-table"></i> Add Product</a>
    </li>
    

    <li class="<?php if (TITULO == 'Categories'): ?>
      active
    <?php endif ?>">
      <a href="?page=categories"><i class="fa fa-fw fa-desktop"></i> Categories</a>
    </li>


    <li class="<?php if (TITULO == 'Orders'): ?>
      active
    <?php endif ?>">
        <a href="?page=orders"><i class="fa fa-fw fa-wrench"></i>Orders</a>
    </li>



    <li class="<?php if (TITULO == 'Carousel'): ?>
      active
    <?php endif ?>">
        <a href="?page=carousel"><i class="fa-solid fa-images"></i>Carousel</a>
    </li>




    <li class="<?php if (TITULO == 'Reports'): ?>
      active
    <?php endif ?>">
        <a href="?page=reports"><i class="fa fa-fw fa-bar-chart"></i>Reports</a>
    </li>



    <li class="<?php if (TITULO == 'Users'): ?>
      active
    <?php endif ?>">
      <a href="?page=users"><i class="fa fa-fw fa-users"></i>Users</a>
    </li>


    
  </ul>
</div>