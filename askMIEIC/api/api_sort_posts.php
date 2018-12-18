<?php
  include_once("../database/session.php");
  include_once("../database/posts.php");
  include_once("../database/users.php");

  header('Content-Type: application/json');

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(json_encode(array('error' => 'not_logged_in')));

  $option = $_POST['option'];
  $year = $_POST['year'];

  if ($option==="recent") {
    // Get posts from a year, ordered by most recent
    $posts = getYearPostsByMostRecent($year);
  }
  else {
    // Get posts from a year, ordered by most liked
    $posts = getYearPostsByMostLiked($year);
  }

  for($i=0; $i<sizeof($posts);$i++) {
    $posts[$i]['name'] = getUser($posts[$i]['creator'])['name'];
    $posts[$i]['comment_num'] = sizeof(getCommentsFromPost($posts[$i]['id']));
    $posts[$i]['subject'] = getSubjectName($posts[$i]['subject'])['name'];
  }

  // Returns the posts as JSON
  echo json_encode($posts);
?>