<?php
  include_once("../database/session.php");
  include_once("../database/users.php");

  session_destroy();

  header('Location: main.php')
?>