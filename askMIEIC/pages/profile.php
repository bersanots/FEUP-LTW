<?php
  include_once('../templates/header&footer.php');
  include_once("../database/session.php");
  include_once('../database/users.php');

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(header('Location: login.php'));

  draw_header();
  ?>
   <section id="view_profile">
      <h1>Profile Information</h1>
      <form action="edit_profile.php" method="post">
        <label>
          FEUP ID <p><?php echo getUserID()?></p>
        </label>
        <label>
          Full name <p><?php echo getUser(getUserID())['name']?></p>
        </label>
        <label>
          E-mail <p><?php echo getUser(getUserID())['email']?></p>
        </label>
        <input type="submit" value="Edit">
      </form>
      <?php if(isset($_SESSION['error'])) echo htmlentities($_SESSION['error']); unset($_SESSION['error'])?>
    </section>
    <aside id="picture">
      <img id="profile_pic" src=<?=getImage(getUserID())?> alt="Profile picture">       
    </aside>
  
  <?php 
  draw_footer();
?>