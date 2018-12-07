<?php
  include_once("../database/session.php");
  include_once("../database/users.php");

  $user_id = getUserID();
  $old_password = getUser($user_id)['password'];
  if( $old_password == $POST['old_password']){
    if($POST['new_password'] == $POST['confirm_password']){
    changePassword($user_id, $_POST['new_password']);
    changeEmail($user_id, $_POST['email']);
    } else {
      $_SESSION['error'] = 'New password did not match the confirmation';
      header("Location:".$_SERVER['HTTP_REFERER']."");
  } else {
	  $_SESSION['error'] = 'Old password is incorrect';
	  header("Location:".$_SERVER['HTTP_REFERER']."");
  }
}

  header("Location: ../pages/main.php");

?>