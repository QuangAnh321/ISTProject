<!DOCTYPE html>
<html>
<head>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333 ;
}
#button {
    padding: 14px 16px;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    vertical-align : middle;
}

li a:hover:not(.active) {
    background-color: #111;
}

#logo {
  color: #B9E6F2;
	font-size: 2em;
	letter-spacing: 5px;
	font-weight: 100;
	font-family: 'Tangerine', cursive;
}

</style>
</head>
<body>
<ul>
  <li style="float:left"; id ="logo"><a href="index.php">Hanu News Portal</a></li>
  <li style="float:right" id ="button"><a href="search.php">Search</a></li>
  <?php if (isset($_SESSION['user']['username'])) { ?>
        <li style="float:right" id="button"><a href="logout.php">Logout</a></li>
        <li style="float:right" id="button"><a href="admin/dashboard.php">Welcome <?php echo $_SESSION['user']['username'] ?></a></li>
  <?php }else{ ?> 
  <li style="float:right" id ="button"><a href="login.php">Login</a></li>
  <?php } ?>
</ul>
</body>
</html>