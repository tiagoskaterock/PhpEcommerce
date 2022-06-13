<?php 

function admin_categories() {
	$query = query("SELECT * FROM categories");
	confirm($query);

	while($row = fetch_array($query)) {
	?>
		<tr>
	    <td><?= $row['id'] ?></td>
	    <td><?= $row['title'] ?></td>

	    <?php $id = $row['id'] ?>
	    	   
	    <td>
	    	<form action="" method="post">	    		
		      <button type="submit" class="btn btn-sm btn-danger" name="delete_category" value="<?= $id ?>">
		      	Delete
		      </button>
		    </form>
	    </td>
	  </tr>
	 <?php
	}
}


function cart() {

	$total_itens = 0;

	// paypal variables declaration
	$item_counter = 1;
	// end paypal variables declaration

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
			      <td><img src="uploads/<?= $row['image'] ?>" alt="<?= $row['title'] ?>" height="50"></td>
			      <td>$ <?= $row['price'] ?></td>
			      <td><?= $value ?></td>
			      <td>$ <?= $row['price'] * $value ?></td>

			      <td>
			      	<!-- remopve apenas um  -->
			      	<a class="btn btn-sm btn-warning" href="resources/cart.php?remove=<?= $row['id'] ?>">
			      		<span class="glyphicon glyphicon-minus" title="Remove one item <?= $row['title'] ?>"></span>		
			      	</a>

			      	<!-- adiciona -->
			      	<a class="btn btn-sm btn-success" href="resources/cart.php?add=<?= $row['id'] ?>">
			      		<span class="glyphicon glyphicon-plus" title="Add one more item <?= $row['title'] ?>"></span>
			      	</a>

			      	<!-- exclui todos -->
			      	<a title="Remove all items <?= $row['title'] ?>" class="btn btn-sm btn-danger" href="resources/cart.php?delete=<?= $row['id'] ?>">
			      		<span class="glyphicon glyphicon-trash"></span>      			
			      	</a>
			      </td>                  
			    </tr> 

			    <!-- paypal stuff item <?= $pp_item_name ?> -->
			    <input type="hidden" name="item_name_<?= $item_counter ?>" value="<?= $row['title'] ?>"> 
					<input type="hidden" name="item_number_<?= $item_counter ?>" value="<?= $row['id'] ?>"> 
					<input type="hidden" name="amount_<?= $item_counter ?>" value="<?= $row['price'] ?>">
					<input type="hidden" name="quantity_<?= $item_counter ?>" value="<?= $value ?>">
			    <!-- end paypal stuff item <?= $pp_item_name ?> -->

			    <?php

			    // incrementing paypal variables
			    $item_counter++;
			    // end incrementing paypal variables

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

	?>



	<?php

} // end function cart()  







function last_id() {
	global $connection;
	return mysqli_insert_id($connection);
}





function get_all_orders() {
	$orders = query("SELECT * FROM orders ORDER BY id DESC");
	confirm($orders);
	return $orders;
}



function get_all_products() {
	$products = query("SELECT * FROM products");
	confirm($products);
	return $products;
}




function get_all_alides_from_main_carousel() {
	$products = query("SELECT * FROM carousel");
	confirm($products);
	return $products;
}




function get_all_slides() {
	$slides = query("SELECT * FROM carousel");
	confirm($slides);
	return $slides;
}




function get_all_reports() {
	$reports = query("SELECT * FROM reports ORDER BY id DESC");
	confirm($reports);
	return $reports;	
}



function get_total_orders() {
	$orders = query("SELECT COUNT(id) as total FROM orders ORDER BY id DESC");
	confirm($orders);
	while($row = fetch_array($orders)) {
		$total = $row['total'];
	}
	return $total;
}



function process_transaction() {

	// sem transação não mostra a página
	if (!isset($_GET['amt']) || !isset($_GET['cc']) || !isset($_GET['tx']) || !isset($_GET['st'])) {
		header("Location: .");	
		die();
	}

	$amount = $_GET['amt'];
	$currency = $_GET['cc'];
	$transaction = $_GET['tx'];
	$status = $_GET['st'];

	$send_order = query("INSERT INTO 
							orders (amount, transaction, status, currency) 
						VALUES 
							('$amount', '$transaction', '$status', '$currency')");

	confirm($send_order);

	$last_id = last_id();

	$total_itens = 0;

	// paypal variables declaration
	$item_counter = 1;
	// end paypal variables declaration

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

			  	$product_price = $row['price'];
			  	$product_title = $row['title'];
			  	
			  	$insert_report = query("INSERT INTO 
			  		reports (product_id, order_id, product_price, product_quantity, product_title) 
			  		VALUES ('$id', '$last_id', '$product_price', '$value', '$product_title')");

			  	confirm($insert_report);	

			  	echo $insert_report;		  	

			  } // end while

			} // end if subtr()

		} // if ($value > 0) 

	} // end foreach()	

	// don't forget to reactivate to deploy on production
	session_destroy();

} // end function report()  




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




function delete_category() {

	if (isset($_POST['delete_category'])) {

		$id = $_POST['delete_category'];
		
		$query = query("DELETE FROM categories WHERE id = $id");
		confirm($query);
		
		$_SESSION['info_message'] = 'Categoria excluída com sucesso';
		header("Location: .?page=categories");
		
	}
}





function delete_order() {
	if (isset($_POST['delete'])) {
  $id = $_POST['delete'];

  $query = query("DELETE FROM orders WHERE id = $id");
		confirm($query);
		
		$_SESSION['info_message'] = 'Orders deleted successfully';
		header("Location: .?page=orders");
  
	}
}



function delete_report() {
	if (isset($_POST['delete'])) {
  $id = $_POST['delete'];

  $query = query("DELETE FROM reports WHERE id = $id");
		confirm($query);
		
		$_SESSION['info_message'] = 'Report deleted successfully';
		header("Location: .?page=reports");
  
	}
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
        <img src="uploads/<?= $image ?>" alt="Post Image">
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
        <img src="uploads/<?= $image ?>" alt="Post Image">
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



function info_message() {
	?>
	<?php if (isset($_SESSION['info_message']) && $_SESSION['info_message'] != null): ?>
    <div class="alert alert-info"><?= $_SESSION['info_message'] ?></div>    
	<?php endif ?>
	<?php
	$_SESSION['info_message'] = null;
}


function show_pagination() {
	include(TEMPLATE_FRONT . DS . "paginate.php");
}



function get_total_products() {
	$query = query("SELECT COUNT(id) as total FROM products");
	confirm($query);

	while($row = fetch_array($query)) {
		$total = $row['total'];
	}

	return $total;
}



function get_categories() {

	$categorias = query("SELECT * FROM categories ORDER BY title");

	confirm($categorias);

	return $categorias;
}










function add_category() {

	 if (isset($_POST['add_category'])) {
	 	$title = $_POST['title'];
	 	$description = $_POST['description'];

	 	$query = query("INSERT INTO 
	 			categories (title, description) 
	 						values ('$title', '$description')");

		confirm($query);
		$_SESSION['info_message'] = 'Categoria criada com sucesso';
		header("Location: .?page=categories");
	 }

}





function login_user() {

	if (isset($_POST['submit'])) {
    $name = escape_string($_POST['name']);
    $password = escape_string($_POST['password']);
    
    $query = query("SELECT * FROM users WHERE name = '$name' AND password = $password");

    confirm($query);

    // erro de login
    if(mysqli_num_rows($query) == 0) {
    	set_message('Your credentials are wrong');
      redirect('login');
    }
    else {
    	// sessão de usuário
    	$_SESSION['username'] = $name;
      redirect('admin');
    }
  }
}





function add_slide() {
	if (isset($_POST['add_slide'])) {

		print_r($_FILES);

		$title = escape_string($_POST['title']);		

		$image = escape_string($_FILES['image']['name']);
		$tmp = escape_string($_FILES['image']['tmp_name']);		

		if (move_uploaded_file($tmp, '../uploads/carousel/' . date('Ymdhis') . $image)) {
		}
		// erro ao subir o arquivo
		else {
			echo 'Nao foi possível fazer o upload da imagem para o carrosel de slides';
			die();			
		}

		$image = '../uploads/carousel/' . date('Ymdhis') . $image;

			$query = query("INSERT INTO 
				carousel (title, image)
				values ('$title', '$image')");

		confirm($query);
		$_SESSION['info_message'] = 'Slide added successfully to the main';
		header("Location: .?page=carousel");
	} 
}




function add_product() {
	if (isset($_POST['publish'])) {

	  $title = escape_string($_POST['title']);
	  $cat_id = escape_string($_POST['cat_id']);
	  $price = escape_string($_POST['price']);
	  $quantity = escape_string($_POST['quantity']);
	  $description = escape_string($_POST['description']);
	  $description_short = escape_string($_POST['description_short']);

	  $image = escape_string($_FILES['image']['name']);
	  $tmp = escape_string($_FILES['image']['tmp_name']);

	  move_uploaded_file($tmp, '../uploads/products/' . date('Ymdhis') . $image);

	  $image = '../uploads/products/' . date('Ymdhis') . $image;

	 	$query = query("INSERT INTO 
	 		products (title, cat_id, price, quantity, description_short, description, image)	
	 		values ('$title', '$cat_id', '$price', '$quantity', '$description_short', '$description', '$image')");

		confirm($query);
		$_SESSION['info_message'] = 'Product created seccessfully';
		header("Location: .?page=products");
	} 
}






function update_product() {
	if (isset($_POST['publish'])) {
		$id = $_POST['id'];
	  $title = escape_string($_POST['title']);
	  $cat_id = escape_string($_POST['cat_id']);
	  $price = escape_string($_POST['price']);
	  $quantity = escape_string($_POST['quantity']);
	  $description = escape_string($_POST['description']);
	  $description_short = escape_string($_POST['description_short']);  

	  // com imagem para atualizar
	  if ($_FILES['image']['size'] > 0) {

	  	// remover imagem antiga
		  $query = query("SELECT image FROM products WHERE id = $id");
			confirm($query);

			while ($row = fetch_array($query)) {
				unlink($row['image']);
			}
		  
		  $image = escape_string($_FILES['image']['name']);
		  $tmp = escape_string($_FILES['image']['tmp_name']);

		  move_uploaded_file($tmp, '../uploads/products/' . date('Ymdhis') . $image);	  	

		  $image = '../uploads/products/' . date('Ymdhis') . $image;

		 	$query = query("UPDATE products SET 
		 			title = '$title', 
		 			cat_id = '$cat_id', 
		 			price = '$price', 
		 			quantity = '$quantity', 
		 			description_short = '$description_short', 
		 			description = '$description',
		 			image = '$image'
		 			WHERE 
		 			id = '$id'");	
	  }


	  // manter a mesma imagem
	  else {
	  	$query = query("UPDATE products SET 
		 			title = '$title', 
		 			cat_id = '$cat_id', 
		 			price = '$price', 
		 			quantity = '$quantity', 
		 			description_short = '$description_short', 
		 			description = '$description'
		 			WHERE 
		 			id = '$id'");	
	  }  

		confirm($query);
		$_SESSION['info_message'] = 'Product updated successfully';
		header("Location: .?page=products");
	} 
}





function add_user() {
	if (isset($_POST['submit'])) {
	  $name = escape_string($_POST['name']);
	  $email = escape_string($_POST['email']);
	  $password = escape_string($_POST['password']);
	  $image = escape_string($_FILES['image']['name']);
	  $tmp = escape_string($_FILES['image']['tmp_name']);

	  move_uploaded_file($tmp, '../uploads/users/' . date('Ymdhis') . $image);

	  $image = '../uploads/users/' . date('Ymdhis') . $image;

	 	$query = query("INSERT INTO 
	 		users (name, email, password, image)	
	 		values ('$name', '$email', '$password', '$image')");

		confirm($query);
		$_SESSION['info_message'] = 'Usuário criado com sucesso';
		header("Location: .?page=users");
	} 
}





function update_user() {
	if (isset($_POST['submit'])) {

	  $name = escape_string($_POST['name']);
	  $email = escape_string($_POST['email']);
	  $password = escape_string($_POST['password']);
	  $id = escape_string($_POST['id']);

	  // com imagem para atualizar
	  if ($_FILES['image']['size'] > 0) {

		  // remover imagem antiga
		  $query = query("SELECT image FROM users WHERE id = $id");
			confirm($query);

			while ($row = fetch_array($query)) {
				unlink($row['image']);
			}
		  
		  $image = escape_string($_FILES['image']['name']);
		  $tmp = escape_string($_FILES['image']['tmp_name']);

		  move_uploaded_file($tmp, '../uploads/users/' . date('Ymdhis') . $image);	  	

		  $image = '../uploads/users/' . date('Ymdhis') . $image;

		 	$query = query("UPDATE users 
		 		SET 
		 		name = '$name', 
		 		email = '$email', 
		 		password = '$password', 
		 		image = '$image'
		 		WHERE id = '$id'
		 		");	
		 		
	  }

	  // manter a mesma imagem
	  else {
	  	$query = query("UPDATE users 
		 		SET 
		 		name = '$name', 
		 		email = '$email', 
		 		password = '$password'
		 		WHERE id = '$id'
		 		");		
	  }  

		confirm($query);
		$_SESSION['info_message'] = 'Usuário atualizado com sucesso';
		header("Location: .?page=users");
	} 
}




function delete_user() {
	if (isset($_POST['delete_user'])) {

		$id = $_POST['delete_user'];

		// remover imagem antiga
	  $query = query("SELECT image FROM users WHERE id = $id");
		confirm($query);
		
		while ($row = fetch_array($query)) {
			unlink($row['image']);
		}

		// remover do banco
		$query = query("DELETE FROM users WHERE id = $id");
		confirm($query);
		
		$_SESSION['info_message'] = 'User deleted successfully';
		header("Location: .?page=users");		
	
	}
}




function delete_product() {
	if (isset($_POST['delete_product'])) {

		$id = $_POST['delete_product'];

		// remover imagem antiga
	  $query = query("SELECT image FROM products WHERE id = $id");
		confirm($query);

		while ($row = fetch_array($query)) {
			unlink($row['image']);
		}

		// remover do banco
		$query = query("DELETE FROM products WHERE id = $id");
		confirm($query);

		while ($row = fetch_array($query)) {
			unlink($row['image']);
		}
		
		$_SESSION['info_message'] = 'Product deleted successfully';
		header("Location: .?page=products");			
	}
}






function delete_slide() {
	if (isset($_POST['delete'])) {

		$id = $_POST['delete'];

		// remover imagem antiga
	  $query = query("SELECT image FROM carousel WHERE id = $id");
		confirm($query);

		while ($row = fetch_array($query)) {
			unlink($row['image']);
		}

		// remover do banco
		$query = query("DELETE FROM carousel WHERE id = $id");
		confirm($query);
		
		$_SESSION['info_message'] = 'Slide deleted successfully';
		header("Location: .?page=carousel");			
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