<?php
  include_once('../templates/header&footer.php');

  draw_header();
  ?>
  <section id="login">
      <h1>Login</h1>
      <form action="../actions/login_action.php" method="post">
        <label>
          FEUP ID <input type="text" name="id" required="required">
        </label>
        <label>
          Password <input type="password" name="password" required="required">
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
