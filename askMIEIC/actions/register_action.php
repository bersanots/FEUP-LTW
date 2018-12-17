<?php
  include_once("../database/session.php");
  include_once("../database/users.php");

  if(existingID($_POST['id'])){
	  $_SESSION['error'] = 'Existing ID';
	  die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }
  else if(!preg_match ("/^201[0-9]{6}$/", $_POST['id'])){
    $_SESSION['error'] = 'Invalid ID format';
	  die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }
  else if(!preg_match ("/^(?:[A-Z][a-z]+\s)*[A-Z][a-z]+$/", $_POST['name'])){
	  $_SESSION['error'] = 'Invalid name format';
	  die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }
  else if(existingEmail($_POST['email'])){
	  $_SESSION['error'] = 'Existing Email';
    die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }
  else if(!preg_match ("/^[a-z0-9._+-]+@[a-z0-9.-]+\.[a-z]{2,}$/", $_POST['email'])){
    $_SESSION['error'] = 'Invalid email format';
	  die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }
  else if(!preg_match ("/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/", $_POST['password'])){
	  $_SESSION['error'] = 'Invalid password format';
	  die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }
  else if (createUser($_POST['id'], $_POST['name'], $_POST['email'], $_POST['password'])) {
    setCurrentUser($_POST['id']);
    echo 'User successfully registered!';
 	  header("Location: ../pages/main.php");	
  }
  else{
  	$_SESSION['error'] = 'error';
  	die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }
 ?>