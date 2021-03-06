<?php
    include_once('../database/session.php');
    include_once('../database/users.php');
    include_once('../database/posts.php');
    include_once('../templates/posts_list.php');
?>

<?php function draw_header(){ ?>
    <!DOCTYPE html>
    <html lang="en-US">
    
    <head>
        <title>askMIEIC</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/style.css" rel="stylesheet">
        <link href="../css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Love+Ya+Like+A+Sister" />
        <link rel="shortcut icon" href="../css/favicon.ico" />
    </head>

    <?php
        if(isset($_SESSION['error'])) { ?>
          <section id="messages">
            <?= htmlentities($_SESSION['error']); ?>
          </section>
      <?php } unset($_SESSION['error']); ?>
    
    <body>
        <header>
            <h1><a href="../pages/main.php">askMIEIC</a></h1>
            <h2>The place to ask your questions</h2>
            <div id="signup">
                <a href="../pages/main.php">Home</a>
                <?php
                if(getUserID() == null) { ?>
                    <a href="../pages/register.php">Register</a>
                    <a href="../pages/login.php">Login</a> 
                <?php } else { ?>
                    <a href="../pages/profile.php?user=<?=getUserID()?>&csrf=<?=$_SESSION['csrf']?>"><img id="profile_pic" src=<?=getUserImage(getUserID())?> alt="Profile picture"> Profile</a>
                    <a href="../actions/logout_action.php">Logout</a>
                <?php } ?>
            </div>
        </header>

<?php } ?>

<?php function draw_menu(){ ?>
        <nav id="menu">
            <!-- just for the hamburger menu in responsive layout -->
            <input type="checkbox" id="hamburger"> 
            <label class="hamburger" for="hamburger"></label>
            <ul>
                <li><a href="../pages/year_page.php?year=1&csrf=<?=$_SESSION['csrf']?>">st year</a></li>
                <li><a href="../pages/year_page.php?year=2&csrf=<?=$_SESSION['csrf']?>">nd year</a></li>
                <li><a href="../pages/year_page.php?year=3&csrf=<?=$_SESSION['csrf']?>">rd year</a></li>
                <li><a href="../pages/year_page.php?year=4&csrf=<?=$_SESSION['csrf']?>">th year</a></li>
                <li><a href="../pages/year_page.php?year=5&csrf=<?=$_SESSION['csrf']?>">th year</a></li>
            </ul>
        </nav>
        <aside id="profile">
          <div>
            <h3>
              <?php 
                if(getUserID() !== null) { ?>
                  <img id="profile_pic" src=<?=getUserImage(getUserID())?> alt="Profile picture">
                  <a href="../pages/profile.php?user=<?=getUserID()?>&csrf=<?=$_SESSION['csrf']?>"><?php echo getUser(getUserID())['name']?></a>
              <?php } 
                else {?>
                  <img id="profile_pic" src="../images/users/default.png" alt="Profile picture"><a href="../pages/login.php">Profile</a>   
              <?php  }?>
            </h3>
            <h4>Last Posts:</h4>
            <p></p>
            <?php 
              $posts = getPostsByMostRecent();
              draw_minified_posts($posts);
            ?>
          </div>        
        </aside>
        <section id="main_section">
          <section id="init_description">
            <article>
                <h1>ASKMIEIC - O que ???</h1>
                <p> Somos uma plataforma de d??vidas para todos os alunos do MIEIC, feita por alunos para os alunos!</p>
            </article>
          </section>
          <section id="objective">
            <article>
                <header>
                    <h1>O nosso Objetivo</h1>
                </header>
                <img src="../images/FEUP_Library.png" alt="FEUP_Library">
                <p>O askMIEIC ?? uma plataforma de d??vidas e de suporte para o estudo de todos os alunos do MIEIC.</p>
                <p>Qualquer utilizador com acesso ?? p??gina pode fazer posts de d??vidas ou dar feedback a outros posts.</p>
                <p>Lembrem-se que a plataforma serve <strong>exclusivamente</strong> para d??vidas, sendo qualquer outro tipo de atividade <ins><strong>proibida</strong></ins> e <ins><strong>banida!</strong></ins></p>
                <br><br>
                <p><em><strong>Bom estudo e boa sorte!!</strong></em></p>
            </article>
          </section>
        </section>  
<?php } ?>

<?php function draw_footer(){  ?>

    <footer>
        <p>&copy; askMIEIC, 2018</p>
    </footer>
    </body>
    </html>
 <?php } ?>