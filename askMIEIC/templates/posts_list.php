<?php
  include_once('../database/users.php');
  include_once('../database/session.php');
?>

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
        <textarea placeholder="Enter text here..." name="description"></textarea>
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
    <span class="user"><?="Posted by " . getUser($post['creator'])['name']?></span>
    <span class="date"><?=" on " . $post['date']?></span>
    <a href="../actions/vote_on_post.php?post=<?=$post['id']?>&type=like&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-up"></i></a>
    <a href="../actions/vote_on_post.php?post=<?=$post['id']?>&type=dislike&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-down"></i></a>
    <?$points=$post['points']; echo $points>0?'+'.$points:$points?>
    <header><h2><?=htmlspecialchars($post['title'])?></h2></header>
    <p><?=htmlspecialchars($post['text'])?></p>
 
    <section id="comments">
      <?php 
       $comments = getCommentsFromPost($post['id']);
       foreach($comments as $comment)
         draw_comment($comment);
      ?>

     <form>
       <input type="hidden" name="post" value="<?=$post['id']?>">
       <input type="hidden" name="user" value="<?=$_SESSION['id']?>">
       <textarea placeholder="Add a comment..." name="text"></textarea>
       <input type="submit" value="Reply">
     </form>
    </section>
  </article>
<?php } ?>

<?php function draw_comment($comment) {
/**
 * Draws a single comment. 
 **/ ?>
  <article class="comment">
    <a href="../actions/delete_comment.php?comment=<?=$comment['id']?>&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-times-circle"></i></a>
    <span class="id" style="display:none"><?=$comment['id']?></span>
    <span class="user"><?=getUser($comment['user'])['name']?></span>
    <span class="date"><?=$comment['date']?></span>
    <a href="../actions/vote_on_comment.php?comment=<?=$comment['id']?>&type=like&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-up"></i></a>
    <a href="../actions/vote_on_comment.php?comment=<?=$comment['id']?>&type=dislike&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-down"></i></a>
    <?$points=$comment['points']; echo $points>0?'+'.$points:$points?>
    <p><?=htmlspecialchars($comment['text'])?></p>
  </article>
<?php } ?>