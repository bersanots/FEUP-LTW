<?php
  include_once('../templates/header&footer.php');
  include_once('../database/users.php');

  draw_header();
  ?>
   <section id="edit_profile">
      <h1>Edit your profile</h1>
      <form action="../actions/profile_action.php" method="post">
        <label>
          Email <input type="email" name="email" required="required">
        </label>
        <label>
          Old Password <input type="password" name="old_password" required="required">
        </label>
        <label>
          New Password <input type="password" name="new_password" required="required">
        </label>
        <label>
          Confirm the new Password <input type="password" name="confirm_new_password" required="required">
        </label>
        <input type="submit" value="Save">
      </form>
      <?php if(isset($_SESSION['error'])) echo htmlentities($_SESSION['error']); unset($_SESSION['error'])?>
    </section>
  
  <?php 
  draw_footer();
?>