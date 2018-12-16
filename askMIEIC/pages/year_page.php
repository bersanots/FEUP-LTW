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

  $year = $_GET['year'];

  // Get posts from a year, ordered by most recent
  $posts = getYearPostsByMostRecent($year);
  $year_subjects = getYearSubjects($year);

  draw_header();
  draw_posts_titles($posts, $year_subjects);
  draw_footer();
?>