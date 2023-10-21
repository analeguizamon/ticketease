<?php require('scripts/conn.php') ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="template.css">
    <title>TicketEase</title>
</head>
<body>
    <form id="formulario" action="scrips/crearPedidos.php" method="POST">
        <header>
            <nav>
                <div>
                    <h4>TicketEase</h4>
                </div>
                <?php
                $sql = "SELECT * FROM categorias";
                $result = $conn->query($sql);

                if ($result->num_rows > 0)
                    while ($row = $result->fetch_assoc())
                        echo "<button type='button' role='obtenerContenido' data-obtenerContenido='" . $row["id"] . "'>" . $row["categoria"] . "</button>";
                ?>
                <div>
                    <h4>TOTAL</h4>
                    <h4 id="total">$0</h4>
                </div>
            </nav>
        </header>
        <main id="contenido">
        </main>
        <footer>
            <input type="number" id="tarjeta" name="tarjeta" placeholder="# Numero de Tarjeta" min=0>
            <button type="button" id="aceptar">Aceptar</button>
        </footer>
        <section hidden>
            <?php
            $sql = "SELECT id, precio FROM articulos";
            $result = $conn->query($sql);

            if ($result->num_rows > 0)
                while ($row = $result->fetch_assoc())
                    echo "<input type='number' class='articulos' data-precio='" . $row["precio"] . "' id='" . $row["id"] . "' name='" . $row["id"] . "'value=0 min=0 max=10>";
            ?>
        </section>
    </form>
    <?php $conn->close() ?>
    <script src="scripts/crearPedidosScript.js"></script>
</body>
</html>