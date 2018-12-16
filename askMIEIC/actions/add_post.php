<?php
  include_once("../database/session.php");
  include_once("../database/posts.php");

  // Verify if user is logged in
  if (!isset($_SESSION['id']))
    die(header('Location: ../pages/login.php'));

  $subjectID = getSubjectID($_POST['subject'])['id'];
  createPost($subjectID, $_POST['title'], $_POST['description'], $_SESSION['id']);

  upload_image_post(getPostsDesc()[0]['id']);

  echo((getPostsDesc()[0]['id']);

  header("Location:".$_SERVER['HTTP_REFERER']."");

  function upload_image_post($post_id)
  {
      if (isset($_FILES['image']['tmp_name'])) {
          // Generate filenames for original, small and medium files
          $originalFileName = "../images/posts/originals/$post_id.png";
          $smallFileName = "../images/posts/thumbs_small/$post_id.png";
          $mediumFileName = "../images/posts/thumbs_medium/$post_id.png";

          // Move the uploaded file to its final destination
          echo $_FILES['image']['tmp_name'];
          move_uploaded_file($_FILES['image']['tmp_name'], $originalFileName);

          // Create an image representation of the original image
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
              $mediumheight = $mediumheight * ($mediumwidth / $width);
          }

          // Create and save a medium image
          $medium = imagecreatetruecolor($mediumwidth, $mediumheight);
          imagecopyresized($medium, $original, 0, 0, 0, 0, $mediumwidth, $mediumheight, $width, $height);

          imagepng($medium, $mediumFileName);
      }
  }
?>