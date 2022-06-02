<?php 

// Este arquivo termina a sessão do usuário logado e redireciona para o home do front end

// terminar sessão
session_start();

$_SESSION['username'] = null;

session_destroy();


// redirecionar para home page
header("Location: ../public");