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

  $userID = $_GET['user'];
  $entry = $_GET['entry'];

  if ($entry==="posts") {
    // Get posts from user, ordered by most recent
    $posts = getUserPostsByMostRecent($userID);
  }
  else if ($entry==="comments") {
    // Get posts with comments from user, ordered by most recent comments
    $posts = getPostsWithUserCommentsByMostRecent($userID);
  }
  else {
    $_SESSION['error'] = 'Invalid request!';
    die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }

  draw_header();
  draw_posts_titles($posts, null);
  draw_footer();
?>