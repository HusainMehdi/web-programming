<?php
	require('db.php');

	function is_logged_in(){
		return isset($_SESSION[$user_name]);
	}

	function require_login(){
		if(!is_logged_in()){
			header("Location: login.php");
		}
	}

	function is_blank($x) {
    	return !isset($x) || trim($x) === '';
	  }

	//Check if the email is in a valid format
	function isEmailValid($value) {
		$email_regex = '/\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\Z/i';
		return preg_match($email_regex, $value) === 1;
	}

	function show_errors($errors=array()) {
	  $result = '';
	  if(!empty($errors)) {
		$result .= "<div class=\"errors\">";
		$result .= "<ul>";
		foreach($errors as $error) {
		  $result .= "<li>" . h($error) . "</li>";
		}
		$result .= "</ul>";
		$result .= "</div>";
	  }
	  return $result;
	}

?>
