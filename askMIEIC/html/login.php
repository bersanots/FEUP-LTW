<!DOCTYPE html>
<html lang="en-US">
  <head>
    <title>askMIEIC</title>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="style.css" rel="stylesheet">
    <link rel="shortcut icon" href="./favicon.ico"/>
  </head>
  <body>
    <header>
      <h1></h1>
      <div id="signup">
        <a href="main.html">Main</a>
        <a href="register.php">Register</a>
        <a href="login.php">Login</a>
      </div>
    </header>
    <section id="login">
      <h1>Login</h1>
      <form action="login_action.php" method="post">
        <label>
          FEUP ID <input type="text" name="id" required="required">
        </label>
        <label>
          Password <input type="password" name="password" required="required">
        </label>
        <input type="submit" value="Login">
      </form>
      <p>
        <?php session_start(); if(isset($_SESSION['error'])) echo htmlentities($_SESSION['error']); unset($_SESSION['error'])?>
      </p>
    </section>
    <footer>
      <p>&copy; askMIEIC, 2018</p>
    </footer>
  </body>
</html>
