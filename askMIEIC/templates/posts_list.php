<?php
  include_once('../database/users.php');
  include_once('../database/session.php');
?>

<?php function draw_posts_titles($posts, $year_subjects) {
    /**
     * Draws a section (#posts) containing several posts
     * as articles. Uses the draw_post function to draw
     * each post.
     */ ?>
  <section id="posts">
  <?php
    if (isset($_SESSION['error'])) {
        echo htmlentities($_SESSION['error']);
    }
    unset($_SESSION['error']);

    if (!empty($posts)) {
        foreach ($posts as $post) {
            draw_post_title($post);
        }
    } else {
        echo "There are no posts in this section!";
    } ?>
  </section>

  <?php 
    if ($year_subjects) {
  ?>
    <script src="../js/toggle.js" defer></script>
    <button class="new_post_btn" onclick="toggleAddPost()">Add New Post</button>

    <section id="add_post" style="display:none">
      <form action="../actions/add_post.php" method="post">
        <h1>Create a new post</h1>
        <label>
          <input type="text" name="title" placeholder="Title" required="required">
        </label>
        <div class="radioButtons">
          <label>Subject:</label>
          <table style="width:100%">
            <tr>
            <?php
              $counter = 0;
              foreach ($year_subjects as $subject) {
              if ($counter%5===0) {
                ?>
                  </tr><tr>
                <?php
              } ?>
              <td>
                <input type="radio" name="subject" value="<?=$subject['name']?>" required="required">
                <p><?=$subject['name']?></p>
              </td>
              <?php $counter++;
              } ?>
            </tr>
            </table>
        </div>
        <textarea placeholder="Enter text here..." name="description" required="required" rows="4" cols="42"></textarea>
        <input type="submit" value="Create">
      </form>
    </section>
<?php
  }
} ?>

<?php function draw_post_title($post) {
/**
 * Draw a single post title as an article (.post).
 */ ?>
  <article class="post">
    <a href="../actions/delete_post.php?post=<?=$post['id']?>&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-times-circle"></i></a>
    <span class="subject"><?=getSubjectName($post['subject'])['name']?></span>
    <span class="user"><a href="../pages/profile.php?user=<?=getUser($post['creator'])['id']?>&csrf=<?=$_SESSION['csrf']?>"><?=getUser($post['creator'])['name']?></a></span>
    <span class="date"><?=$post['datetime']?></span>
    <a href="../actions/vote_on_post.php?post=<?=$post['id']?>&type=like&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-up"></i></a>
    <a href="../actions/vote_on_post.php?post=<?=$post['id']?>&type=dislike&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-down"></i></a>
    <?$points=$post['points']; echo $points>0?'+'.$points:$points?>
    <header><h2><?=htmlspecialchars($post['title'])?></h2></header>
    <span class="comment_num"><a href="../pages/single_post.php?post=<?=$post['id']?>&csrf=<?=$_SESSION['csrf']?>"><i class="far fa-comment-alt"></i>&nbsp<?=sizeof(getCommentsFromPost($post['id']))?></a></span>
  </article>
<?php } ?>

<?php function draw_full_post($post) {
/**
 * Draw a single full post as an article (.post). Uses the
 * draw_comment function to draw each comment.
 */ 
?>
  <section id="posts">
    <article class="post">
      <p><?php if(isset($_SESSION['error'])) echo htmlentities($_SESSION['error']); unset($_SESSION['error'])?></p>
      <span class="subject"><?=getSubjectName($post['subject'])['name']?></span>
      <span class="user"><a href="../pages/profile.php?user=<?=getUser($post['creator'])['id']?>&csrf=<?=$_SESSION['csrf']?>"><?=getUser($post['creator'])['name']?></a></span>
      <span class="date"><?=$post['datetime']?></span>
      <a href="../actions/vote_on_post.php?post=<?=$post['id']?>&type=like&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-up"></i></a>
      <a href="../actions/vote_on_post.php?post=<?=$post['id']?>&type=dislike&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-down"></i></a>
      <?$points=$post['points']; echo $points>0?'+'.$points:$points?>
      <header><h2><?=htmlspecialchars($post['title'])?></h2></header>
      <p><?=htmlspecialchars($post['text'])?></p>
  
      <section id="comments">
        <?php
          $comments = getCommentsFromPostByMostLiked($post['id']);
          foreach($comments as $comment)
            draw_comment($comment);
        ?>

      <form>
        <input type="hidden" name="post" value="<?=$post['id']?>">
        <input type="hidden" name="user" value="<?=$_SESSION['id']?>">
        <textarea placeholder="Add a comment..." name="text" required="required"></textarea >
        <input type="submit" value="Reply">
      </form>
      </section>
    </article>
  </section>
<?php } ?>

<?php function draw_comment($comment) {
/**
 * Draws a single comment as an article (.comment). 
 **/ ?>
  <article class="comment">
    <a href="../actions/delete_comment.php?comment=<?=$comment['id']?>&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-times-circle"></i></a>
    <span class="id" style="display:none"><?=$comment['id']?></span>
    <span class="user"><a href="../pages/profile.php?user=<?=getUser($comment['user'])['id']?>&csrf=<?=$_SESSION['csrf']?>"><?=getUser($comment['user'])['name']?></a></span>
    <span class="date"><?=$comment['datetime']?></span>
    <a href="../actions/vote_on_comment.php?comment=<?=$comment['id']?>&type=like&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-up"></i></a>
    <a href="../actions/vote_on_comment.php?comment=<?=$comment['id']?>&type=dislike&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-down"></i></a>
    <?$points=$comment['points']; echo $points>0?'+'.$points:$points?>
    <p><?=htmlspecialchars($comment['text'])?></p>
  </article>
<?php } ?>