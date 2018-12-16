<?php
  function getPosts() {
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Post');
      $stmt->execute();
      return $stmt->fetchAll();
    }
    catch(PDOException $e) {
      return null;
    }
  }

  function getPost($postID) {
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Post WHERE id = ?');
      $stmt->execute(array($postID));
      return $stmt->fetch();
    }
    catch(PDOException $e) {
      return null;
    }
  }

  function getYearPosts($year) {
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Post JOIN Subject ON Post.subject = Subject.id WHERE year = ?');
      $stmt->execute(array($year));
      return $stmt->fetchAll();
    }
    catch(PDOException $e) {
      return null;
    }
  }

  function getPostsByMostRecent() {
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Post ORDER BY datetime DESC');
      $stmt->execute();
      return $stmt->fetchAll();
    }
    catch(PDOException $e) {
      return null;
    }
  }

  function getYearPostsByMostRecent($year) {
    global $db;
    try {
      $stmt = $db->prepare('SELECT Post.*, Subject.year FROM Post JOIN Subject ON Post.subject = Subject.id WHERE year = ? ORDER BY datetime DESC');
      $stmt->execute(array($year));
      return $stmt->fetchAll();
    }
    catch(PDOException $e) {
      return null;
    }
  }

  function getPostsByMostLiked() {
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Post ORDER BY points DESC');
      $stmt->execute();
      return $stmt->fetchAll();
    }
    catch(PDOException $e) {
      return null;
    }
  }

  function getCommentsFromPost($postID) {
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Comment WHERE post = ? ORDER BY datetime');
      $stmt->execute(array($postID));
      return $stmt->fetchAll();
    }
    catch(PDOException $e) {
      return null;
    }
  }

  function getCommentsFromPostByOldest($postID) {
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Comment WHERE post = ? ORDER BY datetime');
      $stmt->execute(array($postID));
      return $stmt->fetchAll();
    }
    catch(PDOException $e) {
      return null;
    }
  }

  function getCommentsFromPostByMostLiked($postID) {
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Comment WHERE post = ? ORDER BY points DESC');
      $stmt->execute(array($postID));
      return $stmt->fetchAll();
    }
    catch(PDOException $e) {
      return null;
    }
  }

  function getComment($commentID) {
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Comment WHERE id = ?');
      $stmt->execute(array($commentID));
      return $stmt->fetch();
    }
    catch(PDOException $e) {
      return null;
    }
  }

  function getCommentsAfterId($postID, $commentID) {
    global $db;
    try {
      $stmt = $db->prepare('SELECT Comments.*, User.name FROM Comment JOIN User ON Comment.user = User.id WHERE post = ? AND Comment.id > ?');
      $stmt->execute(array($postID, $commentID));
      return $stmt->fetchAll();
    }
    catch(PDOException $e) {
      return null;
    }
  }

  function createPost($subjectID, $title, $text, $creator) {
    global $db;
    try {
  	  $stmt = $db->prepare('INSERT INTO Post(subject, title, text, datetime, creator) VALUES (:SubjectID, :Title,:Text,:Datetime,:Creator)');
      $stmt->bindParam(':SubjectID', $subjectID);
      $stmt->bindParam(':Title', $title);
  	  $stmt->bindParam(':Text', $text);
      $stmt->bindParam(':Datetime', date("Y-m-d H:i:s"));
      $stmt->bindParam(':Creator', $creator);
      return $stmt->execute();
    }
    catch(PDOException $e) {
      return false;
    } 
  }

  function addComment($text, $postID, $userID) {
    global $db;
    try {
  	  $stmt = $db->prepare('INSERT INTO Comment(text, datetime, post, user) VALUES (:Text,:Datetime,:Post,:User)');
  	  $stmt->bindParam(':Text', $text);
      $stmt->bindParam(':Datetime', date("Y-m-d H:i:s"));
      $stmt->bindParam(':Post', $postID);
      $stmt->bindParam(':User', $userID);
      return $stmt->execute();
    }
    catch(PDOException $e) {
      return false;
    } 
  }

  function deletePost($postID) {
    global $db;
    try {
      $stmt = $db->prepare('DELETE FROM Post WHERE id = ?');
      $stmt->execute(array($postID));
      $stmt = $db->prepare('DELETE FROM Comment WHERE post = ?');
      $stmt->execute(array($postID));
      return true;
    }
    catch(PDOException $e) {
      return false;
    }
  }

  function deleteComment($commentID) {
    global $db;
    try {
      $stmt = $db->prepare('DELETE FROM Comment WHERE id = ?');
      $stmt->execute(array($commentID));
      return true;
    }
    catch(PDOException $e) {
      return false;
    }
  }

  function addValueToPost($userID, $postID, $value){
    global $db;
    try {
  	  $stmt = $db->prepare('INSERT INTO ValuePost(idUser, idPost, value) VALUES (:UserID,:PostID,:Value)');
  	  $stmt->bindParam(':UserID', $userID);
      $stmt->bindParam(':PostID', $postID);
      $stmt->bindParam(':Value', $value);
      return $stmt->execute();
    }
    catch(PDOException $e) {
      return false;
    } 
  }

  function addValueToComment($userID, $commentID, $value){
    global $db;
    try {
  	  $stmt = $db->prepare('INSERT INTO ValueComment(idUser, idComment, value) VALUES (:UserID,:CommentID,:Value)');
  	  $stmt->bindParam(':UserID', $userID);
      $stmt->bindParam(':CommentID', $commentID);
      $stmt->bindParam(':Value', $value);
      return $stmt->execute();
    }
    catch(PDOException $e) {
      return false;
    } 
  }

  function deleteValueFromPost($userID, $postID){
    global $db;
    try {
      $stmt = $db->prepare('DELETE FROM ValuePost WHERE idUser = ? AND idPost = ?');
      $stmt->execute(array($userID, $postID));
      return true;
    }
    catch(PDOException $e) {
      return false;
    } 
  }

  function deleteValueFromComment($userID, $commentID){
    global $db;
    try {
      $stmt = $db->prepare('DELETE FROM ValueComment WHERE idUser = ? AND idComment = ?');
      $stmt->execute(array($userID, $commentID));
      return true;
    }
    catch(PDOException $e) {
      return false;
    } 
  }

  function getValueFromPost($userID, $postID){
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM ValuePost WHERE idUser = ? AND idPost = ?');
      $stmt->execute(array($userID, $postID));
      return $stmt->fetch();
    } 
    catch (PDOException $e) {
      return false;
    }
  }

  function getValueFromComment($userID, $commentID){
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM ValueComment WHERE idUser = ? AND idComment = ?');
      $stmt->execute(array($userID, $commentID));
      return $stmt->fetch();
    } 
    catch (PDOException $e) {
      return false;
    }
  }

  function getUserPosts($userID){
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Post WHERE creator = ?');
      $stmt->execute(array($userID));
      return $stmt->fetchAll();
    } 
    catch (PDOException $e) {
      return false;
    }
  }

  function getUserPostsByMostRecent($userID){
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Post WHERE creator = ? ORDER BY datetime DESC');
      $stmt->execute(array($userID));
      return $stmt->fetchAll();
    } 
    catch (PDOException $e) {
      return false;
    }
  }

  function getPostsWithUserCommentsByMostRecent($userID){
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Post WHERE id IN (SELECT post FROM Comment WHERE user = ? ORDER BY datetime DESC)');
      $stmt->execute(array($userID));
      return $stmt->fetchAll();
    } 
    catch (PDOException $e) {
      return false;
    }
  }

  function getUserComments($userID){
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Comment WHERE user = ?');
      $stmt->execute(array($userID));
      return $stmt->fetchAll();
    } 
    catch (PDOException $e) {
      return false;
    }
  }

  function getUserPoints($userID){
    global $db;
    try {
      $stmt = $db->prepare('SELECT SUM(Post.points + Comment.points) AS sum FROM Post JOIN Comment ON Comment.user = Post.creator WHERE user = ?');
      $stmt->execute(array($userID));
      return $stmt->fetch();
    } 
    catch (PDOException $e) {
      return false;
    }
  }

  function editPost($id, $title){
    global $db;
    try {
      $stmt = $db->prepare('UPDATE Post SET title = ? WHERE id = ?');
      return $stmt->execute(array($title, $id));
    }
    catch(PDOException $e) {
      return false;
    }
  }

  function getYearSubjects($year){
    global $db;
    try {
      $stmt = $db->prepare('SELECT name FROM Subject WHERE year = ?');
      $stmt->execute(array($year));
      return $stmt->fetchAll();
    }
    catch(PDOException $e) {
      return false;
    }
  }

  function getSubjectID($name){
    global $db;
    try {
      $stmt = $db->prepare('SELECT id FROM Subject WHERE name = ?');
      $stmt->execute(array($name));
      return $stmt->fetch();
    }
    catch(PDOException $e) {
      return false;
    }
  }

  function getSubjectName($subjectID){
    global $db;
    try {
      $stmt = $db->prepare('SELECT name FROM Subject WHERE id = ?');
      $stmt->execute(array($subjectID));
      return $stmt->fetch();
    }
    catch(PDOException $e) {
      return false;
    }
  }
?>