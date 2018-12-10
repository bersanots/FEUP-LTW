<?php
  include_once("../database/session.php");
  include_once("../database/posts.php");

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(header('Location: ../pages/login.php'));

  createPost($_POST['title'], $_POST['description'], $_POST['date'], $_SESSION['id']);

  header("Location:".$_SERVER['HTTP_REFERER']."");
?>