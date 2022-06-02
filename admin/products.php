<div id="page-wrapper">

  <div class="container-fluid">

   <div class="row">

    <h1 class="page-header">
     All Products

   </h1>
   <table class="table table-hover">


    <thead>

      <tr>
       <th>Id</th>
       <th>Title</th>
       <th>Category</th>
       <th>Price</th>
       <th>Quantity</th>
     </tr>
   </thead>
   <tbody>


    <?php 
    
      // produtos e categoria do produto
      $query = query("
        SELECT 
          products.title as product , 
          products.image as image, 
          products.id as id, 
          products.price as price, 
          products.quantity as quantity, 
          categories.title as category
        FROM 
          products 
        LEFT JOIN 
          categories 
        ON 
          products.cat_id = categories.id");

      confirm($query);

      while ($row = fetch_array($query)) {                
        ?>
        <tr>
          <td><?= $row['id'] ?></td>
          <td><?= $row['product'] ?> <br>
            <img src="<?= $row['image'] ?>" alt="<?= $row['product'] ?>" height=75px>
          </td>
          <td><?= $row['category'] ?></td>
          <td>$ <?= $row['price'] ?></td>
          <td>$ <?= $row['quantity'] ?></td>
        </tr>
        <?php
      }
    
    ?>





  </tbody>
</table>


</div>

</div>
<!-- /.container-fluid -->

</div>
<!-- /#page-wrapper -->

