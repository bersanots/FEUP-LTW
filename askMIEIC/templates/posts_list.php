<?php
  include_once('../database/users.php');
  include_once('../database/session.php');
?>

<?php function draw_posts_titles($posts, $year_subjects) {
    /**
     * Draws a section (#posts) containing several posts
     * as articles. Uses the draw_post_title function to draw
     * each post. Uses @year_subjects as options
     * for the radio buttons on the #add_post section
     */ ?>
  <script src="../js/sort_posts.js" defer></script>

  <section id="posts">
   <form id="sortBy">
    <table style="width:100%">
     <tr>
      <td>
       <label>Sort by:</label>
      </td>
      <td>
       <input type="radio" name="sort" value="recent" checked>
      </td>
      <td>
       <p>&nbspMost recent</p>
      </td>
      <td>
        <input type="radio" name="sort" value="liked">
      </td>
      <td>
       <p>&nbspMost liked</p>
      </td>
      <td>
       <input type="submit" value="Sort">
      </td>
     </tr>
    </table>
    <input type="hidden" name="year" value="<?=($year_subjects!==null ? getYear($year_subjects[0]['name'])['year'] : 0)?>">
   </form>
  <?php
    if (isset($_SESSION['error'])) {
        echo htmlentities($_SESSION['error']);
    }
    unset($_SESSION['error']);

    if (!empty($posts)) {
        foreach ($posts as $post) {
            draw_post_title($post);
        }
    } else { ?>
        <section id="no_posts">
          <?= "There are no posts in this section!" ?>
        </section>
  <?php } ?>
  </section>

  <?php 
    if($year_subjects) {
  ?>
    <script src="../js/toggle.js" defer></script>
    <button class="new_post_btn" onclick="toggleAddPost()">Add New Post</button>

    <section id="add_post" style="display:none">
      <form action="../actions/add_post.php" method="post" enctype="multipart/form-data">
        <h1>Create a new post</h1>
        <label>
          <input type="text" name="title" placeholder="Title" required>
        </label>
        <div class="radioButtons">
          <label>Subject</label>
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
                <input type="radio" name="subject" value="<?=$subject['name']?>" required>
                <p><?=$subject['name']?></p>
              </td>
              <?php $counter++;
              } ?>
            </tr>
          </table>
        </div>
        <textarea placeholder="Enter text here..." name="description" rows="4" cols="42" required></textarea>
        <label id="picture">
          Picture <input type="file" name="image">
        </label>
        <table style="width:100%">
          <tr>
            <td><button type="button" class="cancel_btn" onclick="toggleAddPost()">Cancel</button></td>
            <td><input type="submit" value="Create"></td>
          </tr>
        </table>
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
  <script src="../js/add_comment.js" defer></script>

  <section id="posts">
    <article class="post">
      <span class="subject"><?=getSubjectName($post['subject'])['name']?></span>
      <span class="user"><a href="../pages/profile.php?user=<?=getUser($post['creator'])['id']?>&csrf=<?=$_SESSION['csrf']?>"><?=getUser($post['creator'])['name']?></a></span>
      <span class="date"><?=$post['datetime']?></span>
      <a href="../actions/vote_on_post.php?post=<?=$post['id']?>&type=like&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-up"></i></a>
      <a href="../actions/vote_on_post.php?post=<?=$post['id']?>&type=dislike&csrf=<?=$_SESSION['csrf']?>"><i class="fas fa-arrow-circle-down"></i></a>
      <?$points=$post['points']; echo $points>0?'+'.$points:$points?>
      <header><h2><?=htmlspecialchars($post['title'])?></h2></header>
      <?php if(getPostImage($post['id']) != -1) { ?>
        <img id="profile_pic" src=<?=getPostImage($post['id'])?> alt="Profile picture"><?php } ?>
      <p><?=htmlspecialchars($post['text'])?></p>
  
      <section id="comments">
        <?php
          $comments = getCommentsFromPostByMostLiked($post['id']);
          foreach($comments as $comment)
            draw_comment($comment);
        ?>

      <form id="addComment">
        <input type="hidden" name="post" value="<?=$post['id']?>">
        <input type="hidden" name="user" value="<?=$_SESSION['id']?>">
        <textarea placeholder="Add a comment..." name="text" required></textarea >
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

<?php function draw_minified_posts($posts) {
    /**
     * Draws a section (#posts) containing several short versions of posts
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
      for ($index = 0; $index < 5 && $index < sizeof($posts); $index++) {
        draw_minified_post($posts[$index]);
      }
    } else {
        echo "There are no posts available!";
    } ?>
  </section>
<?php
  }
?>

<?php function draw_minified_post($post) {
/**
 * Draw a single short post as an article (.post).
 */ ?>
  <article class="post">
    <span class="subject"><?=getSubjectName($post['subject'])['name']?></span>
    <span class="user"><a href="../pages/profile.php?user=<?=getUser($post['creator'])['id']?>&csrf=<?=$_SESSION['csrf']?>"><?=getUser($post['creator'])['name']?></a></span>
    <header><h2><?=htmlspecialchars($post['title'])?></h2></header>
    <span class="comment_num"><a href="../pages/single_post.php?post=<?=$post['id']?>&csrf=<?=$_SESSION['csrf']?>"><i class="far fa-comment-alt"></i>&nbsp<?=sizeof(getCommentsFromPost($post['id']))?></a></span>
  </article>
<?php } ?>