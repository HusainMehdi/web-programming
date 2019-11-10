<!DOCTYPE html>
<html>
	<head>
  	<meta charset="uft-8">
  	<title>Register to Game!</title>
  	<link rel="stylesheet" href="style.css">
		<link rel="shortcut icon" href="#" />
	</head>
	<body>
	<?php
		require('init.php');

			if (is_logged_in()){
				echo "<div class='failed'>
				<h3> You are already logged in!</h3>
				<br/>
				<a href='index.php'>Go back</a> Or <a href='logout.php'>Log out</a>
				</div>";
			}


				$user_name = '';
        $password = '';

		//Checks if the user name has been used before
		function uniqueUserName($user_name) {
			$check = mysqli_real_escape_string($con,$user_name);
			$check = "SELECT * FROM 'users' WHERE username='$user_name'";
			$result = mysqli_query($con, $check);
    		$count = mysqli_num_rows($result);
    		mysqli_free_result($result);
			return $admin_count === 0;
		}
		//Checks if the email has been used before
		function uniqueEmail($email) {
			$check = mysqli_real_escape_string($con,$email);
			$check = "SELECT * FROM 'users' WHERE email='$email'";
			$result = mysqli_query($con, $check);
    		$count = mysqli_num_rows($result);
    		mysqli_free_result($result);
			return $admin_count === 0;
		}


		//Check if the email is in a valid format
		function isEmailValid($value) {
    		$email_regex = '/\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\Z/i';
    		return preg_match($email_regex, $value) === 1;
		}
        //Checks if user authentication has been done
        if(isset($_REQUEST['user_name'])) {
           	$user_name = $_REQUEST['user_name'];
            $user_name = mysqli_real_escape_string($con,$user_name);
						if(uniqueUserName($user_name)){
							$email = $_REQUEST['email'];
							$email = mysqli_real_escape_string($con,$email);
							if(uniqueEmail($email) && isEmailValid($email)){
								$password = $_REQUEST['password'];
            		$password = mysqli_real_escape_string($con,$password);

								$query = "INSERT into 'users' (user_name, password, email) VALUES ('$user_name, $password, $email')";

            		if(mysqli_query($con,$query)){
                	$_SESSION['user_name'] = $user_name;
									echo '<script type="text/javascript">';
									echo ' alert("Registration successful! Welcome!")';
									echo '</script>';
                	header("Location: index.php");;
				}

			}
          } else{
                //Error msg if username or password is incorrect
                echo "<div class='failed'>
                <h3> Failed to register. Username or email address already exists</h3>
                <br/>
                <a href='registration.php'>Try again</a>
								<p>Or if you have an account,<a href='login.php'>Log in</a>
                </div>";
            }
        }else{


	?>

		<div class='login'>
                <h1>Register for the Game!</h1>

                <form action="" method="post">
                    Username:
                    <br/>
                    <input type="text" name="user_name" placeholder="Your user name" required/>
                    Password:
                    <br/>
                    <input type="password" name="password" placeholder="Your Password" required/>
                    <br/>
					Confirm your password:
                    <br/>
                    <input type="password" name="password2" placeholder="Confirm your Password" required/>
                    <br/>
					E-Mail
					<br/>
					<input type="text" name="email" placeholder="Your e-mail address" required/>
					<br/>
                    <input type="submit" name="submit" value="Submit" />
                    </form>
                    <p>Have an account? <a href="login.php">Log in</a> or <a href="index.php">Go Back</a></p></p>
                </div>

	<?php } ?>
	</body>
</html>
