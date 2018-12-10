<?php
  include_once('../templates/header&footer.php');
  include_once("../database/session.php");
  include_once('../database/users.php');

  draw_header();
  ?>
   <section id="edit_profile">
      <h1>Edit your profile</h1>
      <form action="../actions/profile_action.php" method="post" enctype="multipart/form-data">
        <label>
          Full name <input type="text" name="name" placeholder="<?php echo getUser(getUserID())['name']?>">
        </label>
        <label>
          Picture <input type="file" name="image">
        </label>
        <label>
          E-mail <input type="email" name="email" placeholder="<?php echo getUser(getUserID())['email']?>">
        </label>
        <label>
          Old Password <input type="password" name="old_password">
        </label>
        <label>
          New Password <input type="password" name="new_password">
        </label>
        <label>
          Confirm the new Password <input type="password" name="confirm_new_password">
        </label>
        <input type="submit" value="Save">
      </form>
      <?php if(isset($_SESSION['error'])) echo htmlentities($_SESSION['error']); unset($_SESSION['error'])?>
    </section>
  
  <?php 
  draw_footer();
?>