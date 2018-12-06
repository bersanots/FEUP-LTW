<?php
  include_once('database/session.php');
  
  if(isset($_SESSION['id'])){
    header("Location:pages/main.php");
  } else {
    header("Location:pages/login.php");
  }
?>