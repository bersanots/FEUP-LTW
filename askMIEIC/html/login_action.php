<?php
  include_once("../database/session.php");
  include_once("../database/users.php");

  if(successfulLogin($_POST['id'], $_POST['password'])){
  	setCurrentUser($_POST['id']);
	header("Location: main.html");
  }
  else {
	$_SESSION['error'] = 'Incorrect ID or password';
	header("Location:".$_SERVER['HTTP_REFERER']."");
  }
?>