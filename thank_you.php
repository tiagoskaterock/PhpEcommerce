<?php 

require_once("resources/config.php");
include(TEMPLATE_FRONT . DS . "header.php");

// sem transação não mostra a página
/*
if (!isset($_GET['amt']) || !isset($_GET['cc']) || !isset($_GET['tx']) || !isset($_GET['st'])) {
	header("Location: .");	
	die();
}
*/



$amount = $_GET['amt'];
$currency = $_GET['cc'];
$transaction = $_GET['tx'];
$status = $_GET['st'];

$query = query("INSERT INTO 
						orders (amount, transaction, status, currency) 
					VALUES 
						('$amount', '$transaction', '$status', '$currency')");

confirm($query);

session_destroy();


?>






<div class="container">

	<h1 class="text-center alert alert-success">Thank You</h1>


<hr>

<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>