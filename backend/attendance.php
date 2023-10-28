<?php

require_once 'connection.php';
require_once 'time_since.php';


if ($_POST) {
    parse_str($_POST['data'], $data);

    $name = $data['names']['first_name'];
    $dropdown = $data['dropdown'];
    $dropdown_1 = (isset($data['dropdown_1'])) ? $data['dropdown_1'] : "none";

    $sql = "INSERT INTO attendances (name, dropdown, dropdown_1) VALUES ('$name', '$dropdown', '$dropdown_1')";
    $result = $conn->query($sql);

    if (!$result) {
        echo "Error inserting attendances into database";
        die;
    }

    header('Content-Type: application/json');

    echo json_encode([
        "success" => true,
        "data" => [
            "insert_id" => 42007,
            "result" => [
                "message" => "<h1>Thank you <strong>$name</strong> for your confirmation.</h1>",
                "action" => "hide_form"
            ],
            "error" => ""
        ]
    ]);


}
