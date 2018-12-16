<?php
  include_once("../database/session.php");
  include_once("../database/posts.php");

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(header('Location: ../pages/login.php'));

  // Verifies CSRF token
  if ($_SESSION['csrf'] != $_GET['csrf']) {
    $_SESSION['error'] = 'Invalid request!';
    die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }

  $commentID = $_GET['comment'];
  $comment = getComment($commentID);

  // Verifies if comment exists and user made it
  if (!$comment || $_SESSION['id']!==$comment['user']) {
    $_SESSION['error'] = 'Can\'t delete this comment!';
    die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }

  if(!deleteComment($commentID)) {
    $_SESSION['error'] = 'Error: Unable to delete the comment';
    die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }  
  header("Location:".$_SERVER['HTTP_REFERER']."");
?>