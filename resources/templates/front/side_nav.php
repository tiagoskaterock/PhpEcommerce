<div class="col-md-3">
  <p class="lead">Shop Name</p>
  <div class="list-group">

    <?php 
    
      $categorias = get_categories();

      foreach ($categorias as $categoria) {
        ?>
        <a href="category?id=<?= $categoria['id'] ?>" class="list-group-item">
          <?= $categoria['title'] ?>          
        </a> 
        <?php
      }
    
    ?>

  </div>
</div>