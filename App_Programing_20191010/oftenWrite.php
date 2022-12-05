<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<?php

	$host = 'localhost';
	$user = 'korea';
	$pw = '1234';
	$dbName = 'test20';
	$mysqli = new mysqli($host, $user, $pw, $dbName);

	$oftenbus_num = $_POST['oftenbus_num']; 

	$sql = "insert into oftenbus (
			oftenbus_num
		
	)";
	
	$sql = $sql. "values (
			'$oftenbus_num'

	)";

	if($mysqli->query($sql)){ 
	  echo '<script>alert("success inserting")</script>'; 
	}else{ 
	  echo '<script>alert("fail to insert sql")</script>';
	}

	mysqli_close($mysqli);
  
?>

<script>
	location.href = "oftenbus.html";
</script>
</html>