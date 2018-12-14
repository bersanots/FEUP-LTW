<?php
  include_once("../database/session.php");
  include_once("../database/posts.php");

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(header('Location: ../pages/login.php'));

  addComment($_POST['text'], $_POST['post'], $_SESSION['id']);

  header("Location:".$_SERVER['HTTP_REFERER']."");
?>