<!DOCTYPE html>
<html>
  <head>
    <title>Login to the Game></title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>

    <?php

        require_once('init.php');
        $user_name = '';
        $password = '';

        if(isset($_POST['user_name'])) {
            $user_name = $_REQUEST['user_name'];
            $user_name = mysqli_real_escape_string($db_connect,$user_name);
            $password = $_REQUEST['password'];
            $password = mysqli_real_escape_string($db_connect,$password);
            
            $query = "SELECT * FROM 'users' WHERE user_name='$user_name' and password='$password'";
            
            $result = mysqli_query($db_connect,$query) or die(mysql_error());
            if(mysqli_num_rows($result) == 1){
                $session['user_name'] = $user_name;
                redirect_to('index.html');
            } else{
                echo "<div class='failed'>
                <h3> Failed to log in. Username or password is incorrect</h3>
                <br/>
                <a href='login.php'>Try again</a>
                </div>";
            }
        }else{
            ?>

            <div id='login'>
                <h1>Log In</h1>

                <form action="login.php" method="post">
                    Username:
                    <br/>
                    <input type="text" name="user_name" placeholder="Your user name" />
                    Password:
                    <br/>
                    <input type="text" name="password" placeholder="Your Password" />
                    <br/>
                    <input type="submit" name="submit" value="Submit" />
                    </form>
                    <p><a href="register.php">Register Here</a></p>
                </div>
            <?php } ?>

     </body>
</html>