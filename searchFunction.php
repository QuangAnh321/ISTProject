<!DOCTYPE html>
<html lang="en">
<head>
<?php include('includes/header.php') ?>
<?php include('includes/function.php') ?>
</head>
<?php
    include('config.php');
    $query = $_GET['query']; 

    if (isset($_GET['query'])) {
        $sql ="SELECT * FROM posts
            WHERE (`title` LIKE '%".$query."%') OR (`body` LIKE '%".$query."%')";
            $result = mysqli_query($conn, $sql);
    }   
    if ($post = mysqli_fetch_assoc($result)) { ?>
        <a href="single_post.php?post-slug=<?php echo $post['slug']; ?>">
			        <div class="post_info">
				        <h3><?php echo $post['title'] ?></h3>
				        <div class ="info">
					        <span><?php echo date("F j, Y ", strtotime($post["created_at"])); ?></span>
					        <span class="read_more">Read more...</span>
				        </div>
			        </div>
                
  <?php  } else { ?>
      <h2>No Result</h2>
  <?php } ?>
