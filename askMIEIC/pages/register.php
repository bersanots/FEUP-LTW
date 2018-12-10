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
        FEUP ID <input type="number" name="id" min="201000000" required="required">
      </label>
      <label>
        Full name <input type="text" name="name" required="required">
      </label>
      <label>
        E-mail <input type="email" name="email" required="required">
      </label>
      <label>
        Password <input type="password" name="password" required="required">
      </label>
      <input type="submit" value="Register">
    </form>
    <p>
      <?php if(isset($_SESSION['error'])) echo htmlentities($_SESSION['error']); unset($_SESSION['error'])?>
    </p>
  </section>
    
    <?php draw_footer(); ?>