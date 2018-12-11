<?php
  include_once("../database/session.php");
  include_once("../database/posts.php");

  header('Content-Type: application/json');

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(json_encode(array('error' => 'not_logged_in')));

  $post = $_POST['post'];
  $user = $_POST['user'];
  $text = $_POST['text'];
  $comment_id = $_POST['comment_id'];

  // Adds the comment to the database
  addComment($post, $user, $text);

  // Gets comments from the database
  $comments = getCommentsAfterId($post, $comment_id);

  // Returns the comments as JSON
  echo json_encode($comments);
?>
