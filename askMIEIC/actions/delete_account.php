<?php
  include_once("../database/session.php");
  include_once("../database/users.php");

  $user_id = getUserID();
  $current_password = getUser($user_id)['password'];

  if($current_password == hash('sha256', $_POST['password'])){
    if($_POST['password'] == $_POST['password_rep']){
        deleteUser($user_id);
        session_destroy();
    } else {
        $_SESSION['error'] = 'Passwords don\'t match';
        die(header("Location:".$_SERVER['HTTP_REFERER'].""));
    }
  } else {
	  $_SESSION['error'] = 'Password is incorrect';
	  die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }

  header('Location: ../pages/main.php')
?>