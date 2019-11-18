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
        require('init.php');
        //This function checks if the user has already got logged in
        if (is_logged_in()){
          echo "<div class='failed'>
          <h3> You are already logged in!</h3>
          <br/>
          <a href='index.php'>Go back</a> Or <a href='logout.php'>Log out</a>
          </div>";
        }
        //Creates the variable for username and password
        $user_name = '';
        $password = '';
        //Checks if user authentication has been done
        if(isset($_POST['user_name'])) {
            //Using the credentials the db is called to check for the results
            $user_name = $_REQUEST['user_name'];
            echo $user_name;
            $user_name = mysqli_real_escape_string($con,$user_name);
            echo $user_name;
            $password = $_REQUEST['password'];
            echo $password;
            $password = mysqli_real_escape_string($con,$password);
            echo $password;
            $query = "SELECT * FROM 'users' WHERE user_name='$user_name' and password='$password'";
            $result = mysqli_query($con,$query) or die(mysql_error());
            echo "Failed to connect to Database: " . mysqli_connect_error();
            echo $result;
            $rows = mysqli_num_rows($result);
            echo $rows;
            if($rows==1){
	             $_SESSION['username'] = $username;
               //Popup message confirming that the login has been successful
               echo '<script type="text/javascript">';
               echo ' alert("You are logged in! Welcome!")';
               echo '</script>';
                header("Location: index.php");;
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
                <!-- Simple login form -->
                <form action="login.php" method="post">
                    Username:
                    <br/>
                    <input type="text" name="user_name" placeholder="Your user name" required/>
                    Password:
                    <br/>
                    <input type="password" name="password" placeholder="Your Password" required/>
                    <br/>
                    <input type="submit" name="submit" value="Submit" />
                    </form>
                    <p><a href="registration.php">Register Here</a> or <a href="index.php">Go Back</a></p>
                </div>
            <?php } ?>

     </body>
</html>
