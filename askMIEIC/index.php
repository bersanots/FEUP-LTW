<?php
  include_once('./html/session.php');
  
  if(isset($_SESSION['id'])){
    header("Location:./html/main.html");
  } else {
    header("Location:./html/login.php");
  }
?>