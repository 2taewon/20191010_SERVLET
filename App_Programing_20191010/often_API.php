<?php

    $host = 'localhost';
    $user = 'korea';
    $pw = '1234';
    $dbName = 'test20';
    $mysqli = new mysqli($host, $user, $pw, $dbName);

    $sql = "SELECT * FROM oftenbus"; 
    $result = mysqli_query($mysqli, $sql);

    while($row = mysqli_fetch_assoc($result)) {

        $oftenbus_num = $row['oftenbus_num'];
        

    }

    $myObj = new stdClass();

    $myObj->oftenbus_num = $oftenbus_num;

    $myJSON = json_encode($myObj);

    echo $myJSON;

?>