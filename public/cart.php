<?php require_once("../resources/config.php") ?>

<?php 

  if (isset($_GET['add'])) {

    $query = query(
      "SELECT * FROM products 
      WHERE id = " . escape_string($_GET['add']) . "");
    confirm($query);

    print_r($_GET);

    echo "<hr>";

    while($row = fetch_array($query)) {

      echo "<pre>";
      print_r($row);
      echo "</pre>";

      //die();

      if ($row['quantity'] != $_SESSION['product_' . $_GET['add']]) {
        $_SESSION['product_' . $_GET['add']] += 1;
        redirect('checkout.php');
      }
      else {
        set_message("We only have " . $row['quantity'] . " {$row['title']} available");
        redirect('checkout.php');
      }

    }
    /*
    $id = $_GET['add'];

    echo $id;

    $_SESSION['product_' . $id] =+ 1;

    // session_destroy();

    redirect(HOMEPAGE);
    */

  }


?>

<h1>
  <?php if (isset($_SESSION['product'])): ?>
    print_r($_SESSION['product'])
  <?php endif ?>  
</h1>
