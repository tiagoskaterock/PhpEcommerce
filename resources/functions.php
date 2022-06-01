<?php 

function cart() {

	$total_itens = 0;

	// pegando o id correto
	foreach ($_SESSION as $name => $value) {

		if ($value > 0) {

			// quantidade em sessão
			$quantity = $name;

			// descobre o id descontando pelo tamanho da string
			$lenght = strlen($name);
			
			$id = substr($name, 8, $lenght);

			if (substr($name, 0, 8) == 'product_') {
				
			  $query = query("SELECT * FROM products WHERE id = $id");
			  confirm($query);

			  while($row = fetch_array($query)) {

			  	$total_itens++;

			    ?>
			    <tr>
			      <td><?= $row['title'] ?></td>
			      <td>$ <?= $row['price'] ?></td>
			      <td><?= $value ?></td>
			      <td>$ <?= $row['price'] * $value ?></td>

			      <td>
			      	<!-- remopve apenas um  -->
			      	<a class="btn btn-sm btn-warning" href="cart.php?remove=<?= $row['id'] ?>">
			      		<span class="glyphicon glyphicon-minus" title="Remove one item <?= $row['title'] ?>"></span>		
			      	</a>

			      	<!-- adiciona -->
			      	<a class="btn btn-sm btn-success" href="cart.php?add=<?= $row['id'] ?>">
			      		<span class="glyphicon glyphicon-plus" title="Add one more item <?= $row['title'] ?>"></span>
			      	</a>

			      	<!-- exclui todos -->
			      	<a title="Remove all items <?= $row['title'] ?>" class="btn btn-sm btn-danger" href="cart.php?delete=<?= $row['id'] ?>">
			      		<span class="glyphicon glyphicon-trash"></span>      			
			      	</a>
			      </td>                  
			    </tr> 
			    <?php

			  } // end while

			} // end if subtr()

		} // if ($value > 0) 

	} // end foreach()
		
	// caso  não tenha nenhum produto no carrinho
	if ($total_itens == 0) {
		?>
		<div class="alert alert-info">
			There are no itens in your cart
		</div>
		<a href="." class="btn btn-sm btn-primary">Home Page</a>
		<?php
	}

} // end function cart()  







function total_itens_cart() {

	$total_itens = 0;

	foreach ($_SESSION as $name => $value) {

		if ($value > 0) {
			$total_itens += $value;
		} 

	} 
		
	return $total_itens;
}






function total_order_cart() {
	
	$total_order = 0;

	// pegando o id correto
	foreach ($_SESSION as $name => $value) {

		if ($value > 0) {

			// quantidade em sessão
			$quantity = $name;

			// descobre o id descontando pelo tamanho da string
			$lenght = strlen($name);
			
			$id = substr($name, 8, $lenght);

			if (substr($name, 0, 8) == 'product_') {
				
			  $query = query("SELECT * FROM products WHERE id = $id");
			  confirm($query);

			  while($row = fetch_array($query)) {
			     	
			    $total_order += $row['price'] * $value;

			  } // end while

			} // end if subtr()

		} // if ($value > 0) 

	} // end foreach()

	return $total_order;
}




function set_message($message) {
	if (!empty($message)) {
		$_SESSION['message'] = $message;
	}
	else {
		$message = '';
	}
}

function display_message() {
	if (isset($_SESSION['message'])) {
		echo $_SESSION['message'];
		unset($_SESSION['message']);
	}
}

function redirect($location) {
	header("Location: $location");
}


function query($sql) {
	global $connection;
	return mysqli_query($connection, $sql);
}


function confirm($result) {
	global $connection;
	if (!$result) {
		die("QUERY FAILED: " . mysqli_error($connection));
	}
}


function escape_string($string) {
	global $connection;
	return mysqli_real_escape_string($connection, $string);
}


function fetch_array($result) {
	return mysqli_fetch_array($result);
}


function get_products() {
	$query = query("SELECT * FROM products");
	confirm($query);

	while($row = fetch_array($query)) {
		?>
			<div class="col-sm-4 col-lg-4 col-md-4">
        <div class="thumbnail">
        	<a href="item?id=<?= $row['id'] ?>">
            <img src="<?= $row['image'] ?>" alt="<?= $row['title'] ?>">
        	</a>
          <div class="caption">
            <h4 class="pull-right">$ <?= $row['price'] ?></h4>
            <h4><a href="item?id=<?= $row['id'] ?>"><?= $row['title'] ?></a>
            </h4>
            <p><?= substr($row['description'], 0, 90)  ?> ...</p>

            <a class="btn btn-primary" href="cart?add=<?= $row['id'] ?>">Add to Cart</a>
          </div>
        </div>
      </div>
		<?php

	}
}


function get_category_name() {
	if (isset($_GET['id'])) {
		$id = $_GET['id'];
	}
	$query = query("SELECT * FROM categories WHERE id = $id");
	confirm($query);

	while($row = fetch_array($query)) {
		$cat_name = $row['title'];
	}

	return $cat_name;
}



function get_total_categories() {
	$query = query("SELECT COUNT(id) as total FROM categories");
	confirm($query);

	while($row = fetch_array($query)) {
		$total = $row['total'];
	}

	return $total;
}


function get_category_description() {
	if (isset($_GET['id'])) {
		$id = $_GET['id'];
	}
	$query = query("SELECT * FROM categories WHERE id = $id");
	confirm($query);

	while($row = fetch_array($query)) {
		$description = $row['description'];
	}

	return $description;
}


function get_products_in_shop_page() {
	$query = query("SELECT * FROM products");
  confirm($query);

  while($row = fetch_array($query)) {

    $price = $row['price'];
    $title = $row['title'];
    $description = $row['description'];
    $description_short = $row['description_short'];
    $image = $row['image'];
    $cat_id = $row['cat_id'];
    $id = $row['id'];

    ?>
    <div class="col-md-3 col-sm-6 hero-feature">
      <div class="thumbnail">
        <img src="<?= $image ?>" alt="Post Image">
        <div class="caption">
          <h3><?= $title ?></h3>
          <p><?= $description_short ?></p>
          <p>
            <a href="" class="btn btn-primary">Buy Now!</a> <a href="item?id=<?= $id ?>" class="btn btn-default">More Info</a>
          </p>
        </div>
      </div>
    </div>
    <?php

  }
}

function get_products_in_category_page() {
	$query = query("SELECT * FROM products WHERE cat_id = " . escape_string($_GET['id']) . " ");
  confirm($query);

  while($row = fetch_array($query)) {

    $price = $row['price'];
    $title = $row['title'];
    $description = $row['description'];
    $description_short = $row['description_short'];
    $image = $row['image'];
    $cat_id = $row['cat_id'];
    $id = $row['id'];

    ?>
    <div class="col-md-3 col-sm-6 hero-feature">
      <div class="thumbnail">
        <img src="<?= $image ?>" alt="Post Image">
        <div class="caption">
          <h3><?= $title ?></h3>
          <p><?= $description_short ?></p>
          <p>
            <a href="" class="btn btn-primary">Buy Now!</a> <a href="item?id=<?= $id ?>" class="btn btn-default">More Info</a>
          </p>
        </div>
      </div>
    </div>
    <?php

  }
}



function get_total_products() {
	$query = query("SELECT COUNT(id) as total FROM products");
	confirm($query);

	while($row = fetch_array($query)) {
		$total = $row['total'];
	}

	return $total;
}



function getCategories() {

	$query = query("SELECT * FROM categories ORDER BY title");

	confirm($query);

	while ($row = fetch_array($query)) { 
		?>
		<a href="category?id=<?= $row['id'] ?>" class="list-group-item"><?= $row['title'] ?></a> 
		<?php
		}
}

function login_user() {

	if (isset($_POST['submit'])) {
    $name = escape_string($_POST['name']);
    $password = escape_string($_POST['password']);
    
    $query = query("SELECT * FROM users WHERE name = '$name' AND password = $password");

    confirm($query);

    if(mysqli_num_rows($query) == 0) {
    	set_message('Your credentials are wrong');
      redirect('login');
    }
    else {
      redirect('admin');
    }
  }
}



function send_message() {
  if (isset($_POST['submit'])) {

  	$to = 'maria@hotmail.com';
    $name = $_POST['name'];
    $subject = $_POST['subject'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    $headers = "From: {$name}, {$email}";

    $result = mail($to, $subject, $message, $headers);

    if (!$result) {
    	?>
    	<br>
    	<div class="alert alert-warning">Email not sended</div>
    	<?php
    }
    else {
    	echo 'Sent';
    }
    // mail function does not work!!!!
  }
}