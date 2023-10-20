<?php
require('conn.php');

if (isset($_GET['categoria'])) {
    $categoria = $_GET['categoria'];
    $sql = "SELECT * FROM articulos WHERE categoria = $categoria";
    $result = $conn->query($sql);

    $data = array();
    while ($row = $result->fetch_assoc()) $data[] = $row;
    echo json_encode($data);
}

$conn->close();
?>