<?php
  include_once('../templates/header&footer.php');

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(header('Location: login.php'));

  // Verifies CSRF token
  if ($_SESSION['csrf'] != $_GET['csrf']) {
    $_SESSION['error'] = 'Invalid request!';
    die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }

  $postID = $_GET['post'];

  // Get single post
  $post = getPost($postID);

  draw_header();
  draw_full_post($post);
  draw_footer();
?>