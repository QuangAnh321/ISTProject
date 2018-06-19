
<?php  include('includes/header.php'); ?>
    <title>Search</title>
    <style>
    .search {
        position: center;
        top: 50x;
        left: 300px;
    }
    .search input {
        height: 50px;
        width: 300px;
    }
    #button2 {
        background: #006384;
        color: white;
    }
    </style>
</head>
<body>
<div class="container">
<?php include('includes/navbar.php') ?>
    <div class="search">
    <form action="searchFunction.php" method="GET">
        <h2>Article Search Box</h2>
        <span class="error"> <?php echo $nameErr;?></span>
        <input type="text" name="query" />
        <input type="submit" id="button2" value="Search" />
    </form>
    </div>
    <?php include('includes/footer.php') ?>

</body>
</html>