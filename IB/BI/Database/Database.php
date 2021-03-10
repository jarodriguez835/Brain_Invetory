<?php
    $host = "localhost:82";
    $database = "bi";
    $username = "root";
    $password = "";
    // Crear Conexión
    $conn = mysqli_connect($host, $username, $password, $database);
    // Verificar conexión
    if (!$conn)
        {
            echo "Conexión Fallida: " . mysqli_error();
        }
    else
        {
            echo "Conexión Exitosa <br>";
        }    
?>