<?php
  include_once('session.php');
  
  if(isset($_SESSION['id'])){
    header("Location: main.html");
  } else {
    header("Location: login.php");
  }
?>