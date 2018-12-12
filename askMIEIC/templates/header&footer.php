<?php function draw_header(){
    
    include_once('../database/session.php');
    include_once('../database/users.php');

    ?>
    <!DOCTYPE html>
    <html lang="en-US">
    
    <head>
        <title>askMIEIC</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Love+Ya+Like+A+Sister" />
        <link rel="shortcut icon" href="../css/favicon.ico" />
        <script src="../js/script.js" defer></script>
    </head>
    
    <body>
        <header>
            <h1>askMIEIC</h1>
            <h2>The place to ask your questions</h2>
            <div id="signup">
                <a href="../pages/main.php">Home</a>
                <?php
                if(getUserID() == null) { ?>
                    <a href="../pages/register.php">Register</a>
                    <a href="../pages/login.php">Login</a> 
                <?php } else { ?>
                    <a href="../pages/profile.php"><img id="profile_pic" src=<?=getImage(getUserID())?> alt="Profile picture"> Profile</a>
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
                <li><a href="../pages/first_year.php">st year</a></li>
                <li><a href="../index.php">nd year</a></li>
                <li><a href="../index.php">rd year</a></li>
                <li><a href="../index.php">th year</a></li>
                <li><a href="../index.php">th year</a></li>
            </ul>
        </nav>
        <?php
          if(getUserID() !== null){?>
            <aside id="profile">
              <div>
                <h3><img id="profile_pic" src=<?=getImage(getUserID())?> alt="Profile picture"><a href="../pages/profile.php"><?php echo getUser(getUserID())['name']?></a></h3>
                <h5>Last Posts:</h5>
                <p></p>
              </div>        
            </aside>
        <?php } 
        else {?>
            <aside id="profile">
              <div>
                <h3><img id="profile_pic" src="../images/default.png" alt="Profile picture"><a href="../pages/login.php">Profile</a></h3>
                <h5>Last Posts:</h5>
                <p></p>
              </div>        
            </aside>
        <?php  }?>
        <section id="main_section">
          <section id="init_description">
            <article>
                <h1>ASKMIEIC O que é??</h1>
                <p> Somos uma plataforma de dúvidas para todos os alunos do MIEIC, feita por alunos para os alunos!</p>
            </article>
          </section>
          <section id="objective">
            <article>
                <header>
                    <h1>O nosso Objetivo</h1>
                </header>
                <img src="../images/FEUP_Library.png" alt="FEUP_Library">
                <p>O askMIEIC é uma plataforma de dúvidas e de suporte para o estudo de todos os alunos do MIEIC.</p>
                <p>Qualquer utilizador com acesso à página pode fazer posts de dúvidas ou dar feedback a outros posts.</p>
                <p>Lembrem-se que a plataforma serve <strong>exclusivamente</strong> para dúvidas, sendo qualquer outro tipo de atividade <ins><strong>proibida</strong></ins> e <ins><strong>banida!</strong></ins></p>
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