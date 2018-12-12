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

  // Verifies if comment exists
  if (!$comment) {
    $_SESSION['error'] = 'Can\'t vote on this comment!';
    die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }

  $vote_type = $_GET['type'];


 // Like or dislike post
 if($vote_type=='like'){
  if(getValueFromComment($_SESSION['id'], $commentID)['value'] == 1){
    deleteValueFromComment($_SESSION['id'], $commentID);
  } else if(getValueFromComment($_SESSION['id'], $commentID)['value'] == -1){
    deleteValueFromComment($_SESSION['id'], $commentID);
    addValueToComment($_SESSION['id'], $commentID, 1);
  } else {
    addValueToComment($_SESSION['id'], $commentID, 1);
  }
}
else if($vote_type=='dislike'){
  if(getValueFromComment($_SESSION['id'], $commentID)['value'] == -1){
    deleteValueFromComment($_SESSION['id'], $commentID);
  } else if(getValueFromComment($_SESSION['id'], $commentID)['value'] == 1){
    deleteValueFromComment($_SESSION['id'], $commentID);
    addValueToComment($_SESSION['id'], $commentID, -1);
  } else addValueToComment($_SESSION['id'], $commentID, -1);
}
else {
  $_SESSION['error'] = 'Invalid vote action';
  die(header("Location:".$_SERVER['HTTP_REFERER'].""));
}

header("Location:".$_SERVER['HTTP_REFERER']."");
?>