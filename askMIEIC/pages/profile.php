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
    </section>

    <script src="../js/toggle.js" defer></script>
    <button class="delete_acct_btn" onclick="toggleDeleteAccount()">Delete Account</button>

    <section id="delete_account" style="display:none">
      <form action="../actions/delete_account.php" method="post">
        <h2>Are you sure you want to delete this account?</h2>
        <label>
          Type your password <input type="password" name="password" required>
        </label>
        <label>
          Type your password again <input type="password" name="password_rep" required>
        </label>
        <table style="width:100%">
          <tr>
            <td><button type="button" class="cancel_btn" onclick="toggleDeleteAccount()">Cancel</button></td>
            <td><input type="submit" value="Confirm"></td>
          </tr>
        </table>
      </form>
    </section>

    <aside id="stats">
      <img id="profile_pic" src=<?=getUserImage($userID)?> alt="Profile picture">
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