<html>
<!-- <meta charset="utf-8"> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<?php

		$host = 'localhost';
		$user = 'korea';
		$pw = '1234';
		$dbName = 'test20';
		$mysqli = new mysqli($host, $user, $pw, $dbName);

		$member_user = $_POST['user'];
	    $member_pass = $_POST['pass'];
	    $member_email = $_POST['email'];

		$sql = "insert into member (
				member_user,
				member_pass,
				member_email
		)";
		
		$sql = $sql. "values (
				'$member_user',
				'$member_pass',
				'$member_email'
		)";

		if($mysqli->query($sql)){ 
		  echo '<script>alert("회원가입 되었습니다.")</script>'; 
		}else{ 
		  echo '<script>alert("회원가입 되지 않았습니다.")</script>';
		}

		mysqli_close($mysqli);
	  
	?>

<script>
	location.href = "loginpages.html";
</script>

</html>