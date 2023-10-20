function obtenerDatos(categoria) {
  let xhr = new XMLHttpRequest();
  xhr.open("GET", "scripts/obtenerArticulos.php?categoria=" + categoria, true);
  xhr.onreadystatechange = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
      let data = JSON.parse(xhr.responseText);
      let contenido = document.getElementById("contenido");
      contenido.innerHTML = "";
      data.forEach(articulo => {
        contenido.innerHTML += `
          <div>
            <h3>${articulo.articulo}</h3>
            <p>$${articulo.precio}</p>
            <div class="contador">
              <button type="button" class="decrementar">-</button>
              <span class="valor">0</span>
              <button type="button" class="incrementar">+</button>
            </div>
          </div>
        `;
      });
    }
  };
  xhr.send();
  return true;
}

document.querySelectorAll("[role=obtenerContenido").forEach(boton => {
  let categoria = boton.value;
  boton.addEventListener("click", () => obtenerDatos(categoria));
});

document.addEventListener("DOMContentLoaded", function() {
  if(obtenerDatos(1)) {
    const contadores = document.querySelectorAll('.contador');
    console.log(contadores);
    contadores.forEach(contador => {
      console.log("hola");
      const decrementarBtn = contador.querySelector('.decrementar');
      const incrementarBtn = contador.querySelector('.incrementar');
      const valorElement = contador.querySelector('.valor');

      let valor = 0;

      const actualizarValor = () => {
        console.log("hola");
        valorElement.textContent = valor;
      };

      incrementarBtn.addEventListener('click', () => {
        console.log("hola");
        valor++;
        actualizarValor();
      });

      decrementarBtn.addEventListener('click', () => {
        console.log("hola");
        if (valor > 0) {
          valor--;
          actualizarValor();
        }
      });
    });
  }
});