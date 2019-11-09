<!DOCTYPE html>
<html>
  <head>
    <title>Login to the Game></title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>

    <?php
        //Creates the variable
        require_once('init.php');
	  	$errors = [];
        $user_name = '';
        $password = '';
        //Checks if user authentication has been done
        if(isset($_POST['user_name'])) {
			
			if(is_blank($user_name)) {
    			$errors[] = "Username cannot be blank.";
  			}
			if(is_blank($password)) {
				$errors[] = "Password cannot be blank.";
			}
			
            $user_name = $_REQUEST['user_name'];
            $user_name = mysqli_real_escape_string($db_connect,$user_name);
            $password = $_REQUEST['password'];
            $password = mysqli_real_escape_string($db_connect,$password);

            $query = "SELECT * FROM 'users' WHERE user_name='$user_name' and password='$password'";

            $result = mysqli_query($db_connect,$query);
            if(mysqli_num_rows($result) == 1){
                $session['user_name'] = $user_name;
                header("Location: index.html");;
            } else{
                //Error msg if username or password is incorrect
                echo "<div class='failed'>
                <h3> Failed to log in. Username or email doen't match</h3>
                <br/>
                <a href='login.php'>Try again</a>
				<p>Or if you don't have an account,<a href='registration.php'>Register</a>
                </div>";
            }
        }else{
            ?>

            <div class='login'>
                <h1>Log In</h1>
				<?php echo show_errors($errors); ?>
				
                <form action="login.php" method="post">
                    Username:
                    <br/>
                    <input type="text" name="user_name" placeholder="Your user name" />
                    Password:
                    <br/>
                    <input type="password" name="password" placeholder="Your Password" />
                    <br/>
                    <input type="submit" name="submit" value="Submit" />
                    </form>
                    <p><a href="registration.php">Register Here</a> or <a href="index.html">Go Back</a></p>
                </div>
            <?php } ?>

     </body>
</html>
