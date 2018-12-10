<?php
  include_once('connection.php');

  session_start();

  function generate_random_token() {
    return bin2hex(openssl_random_pseudo_bytes(32));
  }
  
  if (!isset($_SESSION['csrf'])) {
    $_SESSION['csrf'] = generate_random_token();
  }
  
  function setCurrentUser($userID)
  {
    $_SESSION['id'] = $userID;
  }

  function getUserID()
  {
    if (isset($_SESSION['id'])) {
        return $_SESSION['id'];
    } else {
        return null;
    }
  }     
?>