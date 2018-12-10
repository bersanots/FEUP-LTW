<?php include_once('../database/users.php')?>

<?php function draw_posts($posts) {
/**
 * Draws a section (#posts) containing several posts
 * as articles. Uses the draw_post function to draw
 * each post.
 */ ?>
  <section id="posts">

  <?php 
    foreach($posts as $post)
      draw_post($post);
  ?>

  </section>

  <section id="add_post">
      <h1>Create a new post</h1>
      <form action="../actions/add_post.php" method="post">
        <label>
          <input type="text" name="title" placeholder="Title">
        </label>
        <textarea name="description">Enter text here...</textarea>
        <input type="submit" value="Create">
      </form>
    </section>
<?php } ?>

<?php function draw_post($post) {
/**
 * Draw a single post as an article (.post). Uses the
 * draw_post function to draw each post.
 */ ?>
  <article class="post">
    <a href="../actions/delete_post.php?post=<?=$post['id']?>&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-times-circle"></i></a>
    <?="Posted by " . getUser($post['creator'])['name']?>
    <?=" on " . $post['date']?>
    <a href="../actions/vote_on_post.php?post=<?=$post['id']?>&type=like&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-up"></i></a>
    <a href="../actions/vote_on_post.php?post=<?=$post['id']?>&type=dislike&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-down"></i></a>
    <?$points=$post['points']; echo $points>0?'+'.$points:$points?>
    <header><h2><?=$post['title']?></h2></header>
    <p><?=htmlspecialchars($post['text'])?></p>

    <ul>
      <?php 
        $comments = getCommentsFromPost($post['id']);
        foreach($comments as $comment)
          draw_comment($comment);
      ?>
    </ul>

    <form action="../actions/add_comment.php" method="post">
      <input type="hidden" name="post" value="<?=$post['id']?>">
      <input type="text" name="text" placeholder="Add comment">
      <input type="date" name="date">
      <input type="submit" value="Add">
    </form>

  </article>
<?php } ?>

<?php function draw_comment($comment) {
/**
 * Draws a single comment. 
 **/ ?>
  <li>
    <label>
      <a href="../actions/delete_comment.php?comment=<?=$comment['id']?>&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-times-circle"></i></a>
      <?="Posted by " . getUser($comment['user'])['name']?>
      <?=" on " . $comment['date']?>
      <a href="../actions/vote_on_comment.php?comment=<?=$comment['id']?>&type=like&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-up"></i></a>
      <a href="../actions/vote_on_comment.php?comment=<?=$comment['id']?>&type=dislike&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-down"></i></a>
      <?$points=$comment['points']; echo $points>0?'+'.$points:$points?>
      <p><?=htmlspecialchars($comment['text'])?></p>
    </label>
  </li>
<?php } ?>