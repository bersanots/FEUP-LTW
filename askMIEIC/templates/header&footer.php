<?php function draw_header(){
    
    include_once('../database/session.php');

    ?>
    <!DOCTYPE html>
    <html lang="en-US">
    
    <head>
        <title>askMIEIC</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet">
        <link rel="shortcut icon" href="./favicon.ico" />
    </head>
    
    <body>
        <header>
            <h1>askMIEIC</h1>
            <h2>The place to ask your questions</h2>
            <div id="signup">
                <?php
                echo(getUserID());
                if(getUserID() == null) { ?>
                    <a href="register.php">Register</a>
                    <a href="login.php">Login</a> 
                <?php } else { ?>
                    <a href="logout_action.php">Logout</a> 
                <?php } ?>
            </div>
        </header>
        <nav id="menu">
            <ul>
                <li><a href="../index.php">1st year</a></li>
                <li><a href="../index.php">2nd year</a></li>
                <li><a href="../index.php">3rd year</a></li>
                <li><a href="../index.php">4th year</a></li>
                <li><a href="../index.php">5th year</a></li>
            </ul>
        </nav>
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
        <?php } ?>

<?php function draw_footer(){  ?>

    <footer>
        <p>&copy; askMIEIC, 2018</p>
    </footer>
    </body>
    </html>
 <?php } ?>