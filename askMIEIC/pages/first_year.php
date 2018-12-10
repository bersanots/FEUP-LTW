<?php
    include_once('../templates/header&footer.php');
    include_once('../templates/posts_list.php');
    include_once("../database/session.php");
    include_once('../database/posts.php');

    // Verify if user is logged in
    if (!isset($_SESSION['id']))
      die(header('Location: login.php'));

    // All posts
    $posts = getPosts();

    draw_header();
    draw_posts($posts);
    draw_footer();
?>