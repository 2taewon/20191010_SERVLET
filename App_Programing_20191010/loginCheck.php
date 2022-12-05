<?php

$host = 'localhost';
$user = 'korea';
$pw = '1234';
$dbName = 'test20';
$con = new mysqli($host, $user, $pw, $dbName);

$id = $_POST['id']; // 아이디
$pw = $_POST['pw']; // 패스워드

$query = "select * from member where member_user='$id' and member_pass='$pw'";

$result = mysqli_query($con, $query);
$row = mysqli_fetch_array($result);

if($id==$row['member_user'] && $pw==$row['member_pass'] && $id != NULL){ // id와 pw가 맞다면 login

	echo "<script> alert('로그인 성공'); </script>";
	echo "<script> location.href = 'mainpage.html'; </script>";

}else{ // id 또는 pw가 다르다면 admin_login 폼으로

   echo "<script> alert('로그인 실패'); </script>";
   echo "<script> location.href = 'loginpages.html'; </script>";

}

?>