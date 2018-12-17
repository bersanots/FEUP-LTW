<?php
  include_once("../database/session.php");

  header('Content-Type: application/json');

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(json_encode(array('error' => 'not_logged_in')));

  // Returns the session as JSON
  echo json_encode(array('csrf' => $_SESSION['csrf']));
?>
