<?php
    require('db.php');
    session_start();

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