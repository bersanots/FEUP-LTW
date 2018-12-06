<?php
  include_once('connection.php');

  session_start();
  
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

  if (isset($_SESSION['error'])) {
      $error = $_SESSION['error'];
      unset($_SESSION['error']);
  } else {
      $error = "";
  }
  
?>