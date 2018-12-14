<?php
  include_once('../templates/header&footer.php');
  include_once("../database/session.php");
  include_once('../database/users.php');
  include_once('../database/posts.php');

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(header('Location: login.php'));

  draw_header();
  $userID = getUserID();

  ?>
   <section id="view_profile">
      <h1>Profile Information:</h1>
      <form action="edit_profile.php" method="post">
        <label>
          FEUP ID <p><?php echo $userID?></p>
        </label>
        <label>
          Full name <p><?php echo getUser($userID)['name']?></p>
        </label>
        <label>
          E-mail <p><?php echo getUser($userID)['email']?></p>
        </label>
        <input type="submit" value="Edit">
      </form>
      <?php if(isset($_SESSION['error'])) echo htmlentities($_SESSION['error']); unset($_SESSION['error'])?>
    </section>
    <aside id="stats">
      <img id="profile_pic" src=<?=getImage($userID)?> alt="Profile picture">
      <h2>User Statistics:</h2>
      <label>
        Posts: <?php echo getUserPostsCount($userID)['count']?>
      </label>
      <label>
        Comments: <?php echo getUserCommentsCount($userID)['count']?>
      </label>
      <label>
        Points: <?php echo getUserPoints($userID)['sum']?>
      </label>
    </aside>
  
  <?php 
  draw_footer();
?>