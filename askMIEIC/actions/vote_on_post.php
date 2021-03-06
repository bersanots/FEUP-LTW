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

  // Verifies if post exists
  if (!$post) {
    $_SESSION['error'] = 'Can\'t vote on this post!';
    die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }

  $vote_type = $_GET['type'];

  // Like or dislike post
  if($vote_type=='like'){
    if(getValueFromPost($_SESSION['id'], $postID)['value'] == 1){
      deleteValueFromPost($_SESSION['id'], $postID);
    } else if(getValueFromPost($_SESSION['id'], $postID)['value'] == -1){
      deleteValueFromPost($_SESSION['id'], $postID);
      addValueToPost($_SESSION['id'], $postID, 1);
    } else {
      addValueToPost($_SESSION['id'], $postID, 1);
    }
  }
  else if($vote_type=='dislike'){
    if(getValueFromPost($_SESSION['id'], $postID)['value'] == -1){
      deleteValueFromPost($_SESSION['id'], $postID);
    } else if(getValueFromPost($_SESSION['id'], $postID)['value'] == 1){
      deleteValueFromPost($_SESSION['id'], $postID);
      addValueToPost($_SESSION['id'], $postID, -1);
    } else addValueToPost($_SESSION['id'], $postID, -1);
  }
  else {
    $_SESSION['error'] = 'Invalid vote action';
    die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }

  header("Location:".$_SERVER['HTTP_REFERER']."");
?>