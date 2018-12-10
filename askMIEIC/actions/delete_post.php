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

  $postID = $_GET['post'];
  $post = getPost($postID);

  // Verifies if post exists and user made it
  if (!$post || $_SESSION['id']!==$post['creator']) {
    $_SESSION['error'] = 'Can\'t delete this post!';
    die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }

  deletePost($postID);
  echo 'Post deleted!';
  
  header("Location:".$_SERVER['HTTP_REFERER']."");
?>