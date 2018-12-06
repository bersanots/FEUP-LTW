<?php
  include_once("../database/session.php");
  include_once("../database/users.php");

  changePassword(getUserID(), $_POST['password']);
  changeEmail(getUserID(), $_POST['email']);

  header("Location: ../pages/main.php");

?>