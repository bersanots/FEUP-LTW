<?php function draw_header(){
    
    include_once('../database/session.php');

    ?>
    <!DOCTYPE html>
    <html lang="en-US">
    
    <head>
        <title>askMIEIC</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/style.css" rel="stylesheet">
        <link rel="shortcut icon" href="../css/favicon.ico" />
    </head>
    
    <body>
        <header>
            <h1>askMIEIC</h1>
            <h2>The place to ask your questions</h2>
            <div id="signup">
                <a href="../pages/main.php">Main</a>
                <?php
                if(getUserID() == null) { ?>
                    <a href="../pages/register.php">Register</a>
                    <a href="../pages/login.php">Login</a> 
                <?php } else { ?>
                    <a href="../actions/logout_action.php">Logout</a> 
                <?php } ?>
            </div>
        </header>

<?php } ?>

<?php function draw_menu(){ ?>
        <nav id="menu">
            <ul>
                <li><a href="../index.php">st year</a></li>
                <li><a href="../index.php">nd year</a></li>
                <li><a href="../index.php">rd year</a></li>
                <li><a href="../index.php">th year</a></li>
                <li><a href="../index.php">th year</a></li>
            </ul>
        </nav>
        <aside id="profile">
          <div>
            <h1><a href="#">Profile</a></h1>
            <p>To be done...</p>
          </div>        
        </aside>
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
                <img src="" alt="">
                <p>(Introduzir descrição do objetivo da pag)</p>
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