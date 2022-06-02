<?php require_once("../resources/config.php") ?>

<?php 

  if (isset($_GET['add'])) {

    $query = query(
      "SELECT * FROM products 
      WHERE id = " . escape_string($_GET['add']) . "");

    confirm($query);

    echo "<hr>";

    while($row = fetch_array($query)) {

      if ($row['quantity'] != $_SESSION['product_' . $_GET['add']]) {
        $_SESSION['product_' . $_GET['add']] += 1;
        redirect('checkout');
      }
      else {
        set_message("We only have " . $row['quantity'] . " {$row['title']} available");
        redirect('checkout');
      }

    }

  }

?>


<?php 
  // remove apenas um de cada vez
  if (isset($_GET['remove'])) {
    $_SESSION['product_' . $_GET['remove']]--;

    // confere se existe mais de um produto
    if ($_SESSION['product_' . $_GET['remove']] < 1) {
      $_SESSION['product_' . $_GET['remove']] = 0;
      redirect('checkout');
    }
    else {
      redirect('checkout');
    }
  }  


  // remove TODOS de cada vez
  if (isset($_GET['delete'])) {
    $_SESSION['product_' . $_GET['delete']] = 0;

    // confere se existe mais de um produto
    if ($_SESSION['product_' . $_GET['delete']] < 1) {
      redirect('checkout');      
    }
    else {
      redirect('checkout');            
    }
  }    


  

?>