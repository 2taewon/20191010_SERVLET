<?php

    $host = 'localhost';
    $user = 'korea';
    $pw = '1234';
    $dbName = 'test20';
    $mysqli = new mysqli($host, $user, $pw, $dbName);

    $sql = "SELECT * FROM member"; 
    $result = mysqli_query($mysqli, $sql);

    while($row = mysqli_fetch_assoc($result)) {

        $member_user = $row['member_user'];
        

    }

    $myObj = new stdClass();

    $myObj->member_user = $member_user;
    

    $myJSON = json_encode($myObj);

    echo $myJSON;

?>