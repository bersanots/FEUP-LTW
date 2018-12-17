<?php
  include_once('../templates/header&footer.php');

  // Verify if user is logged in
  if (isset($_SESSION['id']))
    die(header('Location: main.php'));

  draw_header();
  ?>

  <section id="login">
      <h1>Login</h1>
      <form action="../actions/login_action.php" method="post">
        <label>
          FEUP ID <input type="number" name="id" min="201000000" max="201999999" required>
        </label>
        <label>
          Password <input type="password" name="password" required>
        </label>
        <input type="submit" value="Login">
      </form>
      <p>
        <?php if(isset($_SESSION['error'])) echo htmlentities($_SESSION['error']); unset($_SESSION['error'])?>
      </p>
    </section>
  
  <?php 
  draw_footer();
?>
