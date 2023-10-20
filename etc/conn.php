<?php

#$conn = new mysqli("localhost", "root", "", "id21426390_ticketease");
$conn = new mysqli("localhost", "id21426390_ticketease", "Ticketease#123", "id21426390_ticketease");

if ($conn->connect_error) die("Error de conexión: " . $conn->connect_error);

?>