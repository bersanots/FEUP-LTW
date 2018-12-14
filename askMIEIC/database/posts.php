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

  function getCommentsFromPost($postID) {
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM Comment WHERE post = ?');
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
      $stmt = $db->prepare('SELECT Comment.*, User.name FROM Comment, User WHERE Comment.user = User.id And post = ? AND Comment.id > ?');
      $stmt->execute(array($postID, $commentID));
      return $stmt->fetchAll();
    }
    catch(PDOException $e) {
      return null;
    }
  }

  function createPost($title, $text, $date, $creator) {
    global $db;
    try {
  	  $stmt = $db->prepare('INSERT INTO Post(title, text, date, creator) VALUES (:Title,:Text,:Date,:Creator)');
  	  $stmt->bindParam(':Title', $title);
  	  $stmt->bindParam(':Text', $text);
      $stmt->bindParam(':Date', $date);
      $stmt->bindParam(':Creator', $creator);
      return $stmt->execute();
    }
    catch(PDOException $e) {
      return false;
    } 
  }

  function addComment($postID, $userID, $text) {
    global $db;
    try {
  	  $stmt = $db->prepare('INSERT INTO Comment(text, date, post, user) VALUES (:Text,:Date,:Post,:User)');
  	  $stmt->bindParam(':Text', $text);
      $stmt->bindParam(':Date', date("d-m-Y"));
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
    } catch (PDOException $e) {
        return false;
    }
  }

  function getValueFromComment($userID, $commentID){
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM ValueComment WHERE idUser = ? AND idComment = ?');
      $stmt->execute(array($userID, $commentID));
      return $stmt->fetch();
    } catch (PDOException $e) {
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
?>