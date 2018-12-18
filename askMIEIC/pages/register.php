<?php
  include_once('../templates/header&footer.php');

  // Verify if user is logged in
  if (isset($_SESSION['id']))
    die(header('Location: main.php'));

  draw_header(); ?>

  <section id="register">
    <h1>Register</h1>
    <form action="../actions/register_action.php" method="post">
      <label>
        FEUP ID <input type="number" name="id" min="201000000" max="201999999" required>
      </label>
      <label>
        Full name <input type="text" name="name" pattern="^(?:[A-Z][a-z]+\s)*[A-Z][a-z]+$"
        title="Start each name with an uppercase character" required>
      </label>
      <label>
        E-mail <input type="email" name="email" pattern="^[a-z0-9._+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
        title="characters@characters.domain" required>
      </label>
      <label>
        Password <input type="password" name="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$" 
        title="At least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
      </label>
      <input type="submit" value="Register">
    </form>
  </section>
    
    <?php draw_footer(); ?>