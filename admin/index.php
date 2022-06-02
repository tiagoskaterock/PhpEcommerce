<?php 

require_once '../resources/config.php';

// define o título de acordo com a página por get
isset($_GET['page']) ? define('TITULO', ucfirst($_GET['page'])) : define('TITULO', 'Dashboard');

require_once TEMPLATE_BACK . '/header.php';

// adiciona a página, mudando e economizando código dentro de cada uma
isset($_GET['page']) ? include $_GET['page'] . '.php' : include 'dashboard.php';

require_once TEMPLATE_BACK . '/footer.php';