<?php
  function successfulLogin($id, $password) {
    global $db;
    $password_hash = hash('sha256', $password);
    try {
      $stmt = $db->prepare('SELECT * FROM User WHERE id = ? AND password = ?');
      $stmt->execute(array($id, $password_hash));
      return $stmt->fetch();
    }
    catch(PDOException $e) {
      return false;
    }
  }

  function getUser($id) {
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM User WHERE id = ?');
      $stmt->execute(array($id));
      return $stmt->fetch();
    }
    catch(PDOException $e) {
      return null;
    }
  }

  function createUser($id, $name, $email, $password) {
    global $db;
    $password_hash = hash('sha256', $password);
    try {
  	  $stmt = $db->prepare('INSERT INTO User(id, name, email, password) VALUES (:ID,:Name,:Email,:Password)');
  	  $stmt->bindParam(':ID', $id);
  	  $stmt->bindParam(':Name', $name);
      $stmt->bindParam(':Email', $email);
      $stmt->bindParam(':Password', $password_hash);
      return $stmt->execute();
    }
    catch(PDOException $e) {
      return false;
    } 
  }

  function deleteUser($id) {
    global $db;
    try {
      $stmt = $db->prepare('DELETE FROM User WHERE id = ?');
      $stmt->execute(array($id));
      return true;
    }
    catch(PDOException $e) {
      return false;
    }
  }

  function existingID($id) {
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM User WHERE id = ?');
      $stmt->execute(array($id));
      return $stmt->fetch();
    }
    catch(PDOException $e) {
      return true;
    }
  }

  function existingEmail($email) {
    global $db;
    try {
      $stmt = $db->prepare('SELECT * FROM User WHERE email = ?');
      $stmt->execute(array($email));
      return $stmt->fetch();
    }
    catch(PDOException $e) {
      return true;
    }
  }

  function changeName($id, $new_name){
    global $db;
    try {
      $stmt = $db->prepare('UPDATE User SET name = ? WHERE id = ?');
      return $stmt->execute(array($new_name, $id));
    }
    catch(PDOException $e) {
      return false;
    }
  }

  function changeEmail($id, $new_email){
    global $db;
    try {
      $stmt = $db->prepare('UPDATE User SET email = ? WHERE id = ?');
      return $stmt->execute(array($new_email, $id));
    }
    catch(PDOException $e) {
      return false;
    }
  }

  function changePassword($id, $new_password){
    $password_hash = hash('sha256', $new_password);
    global $db;
    try {
      $stmt = $db->prepare('UPDATE User SET password = ? WHERE id = ?');
      return $stmt->execute(array($password_hash, $id));
    }
    catch(PDOException $e) {
      return false;
    }
  }

  function changePicture($id, $picture) {
    global $db;
    try {
      $stmt = $dbh->prepare('UPDATE User SET profilePic = ? WHERE id = ?');
      return $stmt->execute(array($picture, $userID));
    }
    catch(PDOException $e) {
      return false;
    }
  }
  
  function getImage($user_id){
    $path = "../images/originals/$user_id.png";
    if(file_exists($path)){
      return $path;
    } else return "../images/default.png";
  }
?>