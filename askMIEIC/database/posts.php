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
      $stmt = $db->prepare('SELECT Comments.*, User.name FROM Comment JOIN User USING (user) WHERE post = ? AND Comment.id > ?');
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

  function addLikeToPost($userID, $postID){
    global $db;
    try {
  	  $stmt = $db->prepare('INSERT INTO LikePost(idUser, idPost) VALUES (:UserID,:PostID)');
  	  $stmt->bindParam(':UserID', $userID);
  	  $stmt->bindParam(':PostID', $postID);
      return $stmt->execute();
    }
    catch(PDOException $e) {
      return false;
    } 
  }

  function addDislikeToPost($userID, $postID){
    global $db;
    try {
  	  $stmt = $db->prepare('INSERT INTO DislikePost(idUser, idPost) VALUES (:UserID,:PostID)');
  	  $stmt->bindParam(':UserID', $userID);
  	  $stmt->bindParam(':PostID', $postID);
      return $stmt->execute();
    }
    catch(PDOException $e) {
      return false;
    } 
  }

  function addLikeToComment($userID, $commentID){
    global $db;
    try {
  	  $stmt = $db->prepare('INSERT INTO LikeComment(idUser, idComment) VALUES (:UserID,:CommentID)');
  	  $stmt->bindParam(':UserID', $userID);
  	  $stmt->bindParam(':CommentID', $commentID);
      return $stmt->execute();
    }
    catch(PDOException $e) {
      return false;
    } 
  }

  function addDislikeToComment($userID, $commentID){
    global $db;
    try {
  	  $stmt = $db->prepare('INSERT INTO DislikeComment(idUser, idComment) VALUES (:UserID,:CommentID)');
  	  $stmt->bindParam(':UserID', $userID);
  	  $stmt->bindParam(':CommentID', $commentID);
      return $stmt->execute();
    }
    catch(PDOException $e) {
      return false;
    } 
  }

  function editPost($id, $new_name){
    global $db;
    try {
      $stmt = $db->prepare('UPDATE User SET name = ? WHERE id = ?');
      return $stmt->execute(array($new_name, $id));
    }
    catch(PDOException $e) {
      return false;
    }
  }
?>