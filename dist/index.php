<?php 
  session_start(); 

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
?>



<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <title>Geo</title>
</head>

<body>
    <nav>
    <div id="login">
<?php  if (isset($_SESSION['username'])) : ?>
    	<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
    	<p> <a href="index.php?logout='1'" style="color: red;">logout</a> </p>
<?php endif ?>

    </div>
        <ul>
            <li><a href="index.php">Home</a><li>
            <li><a href="index.php">Home</a><li>
            <li><a href="index.php">Home</a><li>
            <li><a href="index.php">Admin</a><li>
        </ul>
    </nav>

    <div id="root"></div>

<footer>
    <p>Max is kansloos</p>
</footer>

    <script src="bundle.js"></script>
</body>

</html>
  	<?php if (isset($_SESSION['success'])) : ?>
      <div class="error success" >
      	<h3>
          <?php 
          	echo $_SESSION['success']; 
          	unset($_SESSION['success']);
          ?>
      	</h3>
      </div>
  	<?php endif ?>

    <!-- logged in user information -->
   
</div>

<div id="app"></div>
<script type="text/javascript" src="/maps/src/index.js" ></script>

		
</body>
</html>