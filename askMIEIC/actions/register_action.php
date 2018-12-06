<?php
  include_once("../database/session.php");
  include_once("../database/users.php");

  if(existingID($_POST['id'])){
	  $_SESSION['error'] = 'Existing ID';
	  header("Location:".$_SERVER['HTTP_REFERER']."");
  }
  else if(existingEmail($_POST['email'])){
	  $_SESSION['error'] = 'Existing Email';
    header("Location:".$_SERVER['HTTP_REFERER']."");
  }
  else if (createUser($_POST['id'], $_POST['name'], $_POST['email'], $_POST['password'])) {
    setCurrentUser($_POST['id']);
    echo 'User successfully registered!';
 	  header("Location: ../pages/main.php");	
  }
  else{
  	$_SESSION['error'] = 'error';
  	header("Location:".$_SERVER['HTTP_REFERER']."");
  }
 ?>