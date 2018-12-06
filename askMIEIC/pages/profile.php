<?php
  include_once('../templates/header&footer.php');
  include_once('../database/users.php');

  draw_header();
  ?>
  <section id="profile">
      <h1>Profile</h1>
      <form action="../actions/profile_action.php" method="post">

        <?php 
        $sql = "SELECT id, name, email, password FROM MyGuests";
        ?>
        <label>
          FEUP ID <input type="text" name="id" required="required">
        </label>
        <label>
          Email <input type="text" name="email" required="required">
        </label>
        <label>
          Password <input type="password" name="password" required="required">
        </label>
        <label>
          Confirm the Password <input type="password" name="confirm_password" required="required">
        </label>
        <input type="submit" value="Profile">
      </form>
      <?php if(isset($_SESSION['error'])) echo htmlentities($_SESSION['error']); unset($_SESSION['error'])?>
    </section>
  
  <?php 
  draw_footer();
?>