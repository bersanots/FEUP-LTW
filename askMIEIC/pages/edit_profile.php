<?php
  include_once('../templates/header&footer.php');

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(header('Location: login.php'));

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
    </section>
  
  <?php 
  draw_footer();
?>