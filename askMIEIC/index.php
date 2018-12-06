<?php
  include_once('./html/session.php');
  
  if(isset($_SESSION['id'])){
    header("Location:./html/main.php");
  } else {
    header("Location:./html/login.php");
  }
?>