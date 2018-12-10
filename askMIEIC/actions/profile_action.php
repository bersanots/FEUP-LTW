<?php
  include_once("../database/session.php");
  include_once("../database/users.php");

  $user_id = getUserID();
  $current_password = getUser($user_id)['password'];

  
  if($_POST['old_password']===""){    //don't change the password
    if($_POST['name']!=="")
      changeName($user_id, $_POST['name']);
      upload_image($user_id);
    if($_POST['email']!=="")
      changeEmail($user_id, $_POST['email']);
      upload_image($user_id);
    header("Location: ../pages/profile.php");
  }
  else if($current_password == hash('sha256', $_POST['old_password'])){
    if($_POST['new_password'] == $_POST['confirm_new_password']){
      if($_POST['name']!=="")
        changeName($user_id, $_POST['name']);
        upload_image($user_id);
      if($_POST['email']!=="")
        changeEmail($user_id, $_POST['email']);
        upload_image($user_id);
      if($_POST['new_password']!=="")
        changePassword($user_id, $_POST['new_password']);
        upload_image($user_id);
      header("Location: ../pages/profile.php");
    } else {
        $_SESSION['error'] = 'New password did not match the confirmation';
        die(header("Location:".$_SERVER['HTTP_REFERER'].""));
    }
  } else {
	  $_SESSION['error'] = 'Old password is incorrect';
	  die(header("Location:".$_SERVER['HTTP_REFERER'].""));
  }
  

  function upload_image($user_id){

  if(isset($_FILES['image']['tmp_name'])){
  // Generate filenames for original, small and medium files
  $originalFileName = "../images/originals/$user_id.png";
  $smallFileName = "../images/thumbs_small/$user_id.png";
  $mediumFileName = "../images/thumbs_medium/$user_id.png";

  // Move the uploaded file to its final destination
  echo $_FILES['image']['tmp_name'];
  move_uploaded_file($_FILES['image']['tmp_name'], $originalFileName);

  // Crete an image representation of the original image
  imagepng(imagecreatefromstring(file_get_contents($originalFileName)), $originalFileName);
  $original = imagecreatefrompng($originalFileName);

  $width = imagesx($original);     // width of the original image
  $height = imagesy($original);    // height of the original image
  $square = min($width, $height);  // size length of the maximum square

  // Create and save a small square thumbnail
  $small = imagecreatetruecolor(200, 200);
  imagecopyresized($small, $original, 0, 0, ($width>$square)?($width-$square)/2:0, ($height>$square)?($height-$square)/2:0, 200, 200, $square, $square);
  imagepng($small, $smallFileName);

  // Calculate width and height of medium sized image (max width: 400)
  $mediumwidth = $width;
  $mediumheight = $height;
  if ($mediumwidth > 400) {
    $mediumwidth = 400;
    $mediumheight = $mediumheight * ( $mediumwidth / $width );
  }

  // Create and save a medium image
  $medium = imagecreatetruecolor($mediumwidth, $mediumheight);
  imagecopyresized($medium, $original, 0, 0, 0, 0, $mediumwidth, $mediumheight, $width, $height);

  imagepng($medium, $mediumFileName);
}
}
?>