<?php
  include_once("../database/session.php");
  include_once("../database/users.php");

  $user_id = getUserID();
  $current_password = getUser($user_id)['password'];

  if($_POST['old_password']===""){    //don't change the password
    if($_POST['name']!=="")
      changeName($user_id, $_POST['name']);
    if($_POST['email']!=="")
      changeEmail($user_id, $_POST['email']);
    header("Location: ../pages/profile.php");
  }
  else if($current_password == hash('sha256', $_POST['old_password'])){
    if($_POST['new_password'] == $_POST['confirm_new_password']){
      if($_POST['name']!=="")
        changeName($user_id, $_POST['name']);
      if($_POST['email']!=="")
        changeEmail($user_id, $_POST['email']);
      if($_POST['new_password']!=="")
        changePassword($user_id, $_POST['new_password']);
      header("Location: ../pages/profile.php");
    } else {
        $_SESSION['error'] = 'New password did not match the confirmation';
        header("Location:".$_SERVER['HTTP_REFERER']."");
    }
  } else {
	  $_SESSION['error'] = 'Old password is incorrect';
	  header("Location:".$_SERVER['HTTP_REFERER']."");
  }
?>