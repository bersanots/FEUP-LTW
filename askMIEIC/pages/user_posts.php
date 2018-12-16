<?php
  include_once('../templates/header&footer.php');
  include_once('../templates/posts_list.php');
  include_once("../database/session.php");
  include_once('../database/posts.php');

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(header('Location: login.php'));

  // Verifies CSRF token
  if ($_SESSION['csrf'] != $_GET['csrf']) {
    $_SESSION['error'] = 'Invalid request!';
    die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }

  $userID = $_GET['user'];

  // Get posts from user, ordered by most recent
  $posts = getUserPostsByMostRecent($userID);

  draw_header();
  draw_posts_titles($posts, null);
  draw_footer();
?>