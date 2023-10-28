<?php 

    $conn = mysqli_connect("localhost", "root", "", "invitation");

    if(!$conn){
        die("Connection failed: ". mysqli_connect_error());
    }

?>