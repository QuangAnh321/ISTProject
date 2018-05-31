<!DOCTYPE html>
<html lang="en">
    <?php require_once('config.php') ?>
    <?php require_once( ROOT_PATH . '/includes/function.php') ?>
<head>
    <?php include( ROOT_PATH . '/includes/header.php') ?>
    <title>HANU News System</title>
</head>
<body>
    <div class="container">
        <?php include( ROOT_PATH . '/includes/navbar.php') ?>
        <?php include( ROOT_PATH . '/includes/banner.php') ?>

    <?php $posts = getPublishedPosts(); ?>
    <div class="content">
        <h2 class="content-title">Recent Ariticles</h2>
        <hr>
        <?php foreach ($posts as $post): ?>
	        <div class="post" style="margin-left: 0px;">
		        <img src="<?php echo BASE_URL . '/static/images/' . $post['image']; ?>" class="post_image" alt="">
                <!--Display the topic -->
                <?php
                    if (isset($post['topic']['name'])): 
                ?>
                    <a 
                        href ="<?php echo BASE_URL . 'filtered_posts.php?topic=' . $post['topic']['id'] ?>"
                        class = "btn category">
                        <?php echo $post['topic']['name'] ?>
                    </a>
                <?php endif ?>

		        <a href="single_post.php?post-slug=<?php echo $post['slug']; ?>">
			        <div class="post_info">
				        <h3><?php echo $post['title'] ?></h3>
				        <div class="info">
					        <span><?php echo date("F j, Y ", strtotime($post["created_at"])); ?></span>
					        <span class="read_more">Read more...</span>
				        </div>
			        </div>
		        </a>
            </div>
        <?php endforeach ?>
    <?php include( ROOT_PATH . '/includes/footer.php') ?>

    

</body>
</html>