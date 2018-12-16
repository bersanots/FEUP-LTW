<?php
  include_once('../templates/header&footer.php');

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(header('Location: login.php'));

  // Verifies CSRF token
  if ($_SESSION['csrf'] != $_GET['csrf']) {
    $_SESSION['error'] = 'Invalid request!';
    die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }

  $userID = $_GET['user'];

  draw_header();
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
        <?php if($userID===getUserID()) { ?>
          <input type="submit" value="Edit">
        <?php }?>
      </form>
      <?php if(isset($_SESSION['error'])) echo htmlentities($_SESSION['error']); unset($_SESSION['error'])?>
    </section>
    <aside id="stats">
      <img id="profile_pic" src=<?=getImage($userID)?> alt="Profile picture">
      <h2>User Statistics:</h2>
      <label>
        <a href="../pages/user_entries.php?user=<?=$userID?>&entry=posts&csrf=<?=$_SESSION['csrf']?>">Posts:</a>
        <?php echo sizeof(getUserPosts($userID))?>
      </label>
      <label>
        <a href="../pages/user_entries.php?user=<?=$userID?>&entry=comments&csrf=<?=$_SESSION['csrf']?>">Comments:</a>
        <?php echo sizeof(getUserComments($userID))?>
      </label>
      <label>
        Points: <?php echo getUserPoints($userID)['sum']?>
      </label>
    </aside>
  
  <?php 
  draw_footer();
?>