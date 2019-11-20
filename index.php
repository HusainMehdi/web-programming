<!DOCTYPE html>
  <html>
  <head>
    <title>Login to the Game></title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css" />
  </head>

		  <body>
        <?php
        session_start();

			  echo '<h1>Our Game</h1>';
			  echo '<div class="menu">';
        echo $_SESSION["user_name"];
        if(isset($_SESSION["user_name"])){
          echo '<li><a href="logout.php">Log Out</a></li>';
        }else{
          echo '<li><a href="login.php">Login</a></li>';
          echo '<li><a href="registration.php">Register</a></li>';
        }
				echo '<li>Rules</li>';
				echo '<li>Developers</li>';
        echo '</div>';

        ?>
    </body>
  </html>
