<?php require('etc/conn.php') ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="etc/template.css">
    <title>TicketEase</title>
</head>
<body>
    <form action="" method="POST">
        <header>
            <section hidden>
                <?php
                $sql = "SELECT id FROM articulos";
                $result = $conn->query($sql);

                if ($result->num_rows > 0)
                    while ($row = $result->fetch_assoc())
                        echo "<input type='number' name='" . $row["id"] . "'value=0>";
                ?>
            </section>
            <nav>
                <?php
                $sql = "SELECT * FROM categorias";
                $result = $conn->query($sql);

                if ($result->num_rows > 0)
                    while ($row = $result->fetch_assoc())
                        echo "<button type='button' role='obtenerContenido' value='" . $row["id"] . "'>" . $row["categoria"] . "</button>";
                ?>
            </nav>
        </header>
        <main id="contenido">
        </main>
        <footer>
            <input type="number" placeholder="Numero de Tarjeta">
            <button type="button" role="aceptar">Aceptar</button>
        </footer>
    </form>
    <script src="scripts/armarPedidosScript.js"></script>
</body>
</html>