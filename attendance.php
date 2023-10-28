<?php

require_once 'backend/connection.php';
require_once 'backend/time_since.php';

$sql = "SELECT * FROM attendances";

$result = $conn->query($sql);

if (!$result) {
    echo "Error get attendances from database";
    die;
}


?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> List Attendances Invitation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
    <div class="container my-5">
        <h1>List Attendances</h1>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th style="text-align: center;" scope="col">No</th>
                    <th scope="col">Name</th>
                    <th scope="col">Is Attendance</th>
                    <th scope="col">People Attendance</th>
                    <th scope="col">Time Created</th>
                </tr>
            </thead>
            <tbody>
                <?php $no = 1 ?>
                <?php while($data = $result->fetch_assoc()) : ?>
                <tr>
                    <td style="text-align: center;"><?= $no ?></td>
                    <td><?= $data['name'] ?></td>
                    <td><?= $data['dropdown'] ?></td>
                    <td><?= $data['dropdown_1'] ?></td>
                    <td><?= time_sice($data['create_time']) ?></td>
                    <?php $no++ ?>
                </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
</body>

</html>