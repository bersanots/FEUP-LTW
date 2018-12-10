<?php
  include_once("../database/session.php");
  include_once("../database/posts.php");

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(header('Location: ../pages/login.php'));

  $date = date("d-m-Y");
  addComment($_POST['text'], $date, $_POST['post'], $_SESSION['id']);

  header("Location:".$_SERVER['HTTP_REFERER']."");
?>