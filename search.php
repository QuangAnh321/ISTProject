<!DOCTYPE html>
<html lang="en">
<head>
    <?php include('includes/header.php'); ?>
    <title>Search</title>
    <style>
        .search {
     position: static;
     top: 50x;
     left: 300px;
    }
    .search input {
     height: 50px;
     width: 300px;
    }
    </style>
</head>
<body>
    <div class="search">
    <form action="searchFunction.php" method="GET">
        <h2>Article Search Box</h2>
        <input type="text" name="query" />
        <input type="submit" value="Search" />
    </form>
    </div>
</body>
</html>