let botones = document.querySelectorAll("button[role=obtenerContenido]");
if(botones.length > 0) obtenerDatos(1);
botones.forEach(boton => {
  boton.addEventListener("click", () => {
    botones.forEach(boton => { boton.classList.remove("btnToggle"); });
    boton.classList.add("btnToggle");
    obtenerDatos(boton.getAttribute('data-obtenerContenido'));
  });
});

function obtenerDatos(categoria) {
  let xhr = new XMLHttpRequest();
  xhr.open("GET", "scripts/obtenerArticulos.php?categoria=" + categoria, true);
  xhr.onreadystatechange = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
      let data = JSON.parse(xhr.responseText);
      document.getElementById("contenido").innerHTML = "";
      data.forEach(articulo => {
        let cantidad = document.getElementById(articulo.id).value;
        document.getElementById("contenido").innerHTML += `
          <div>
            <h3>${articulo.articulo}</h3>
            <p>$${articulo.precio}</p>
            <div class="contador">
              <button type="button" class="contador__decrementar">-</button>
              <span class="contador__valor" data-contador="${articulo.id}">${cantidad}</span>
              <button type="button" class="contador__incrementar">+</button>
            </div>
          </div>
        `;
      });
      
      document.querySelectorAll('.contador').forEach(contador => {
        const campoVisible = contador.querySelector('.contador__valor');
        const campoInvisible = document.getElementById(campoVisible.getAttribute('data-contador'));
        let cantidad = campoInvisible.value;
    
        const actualizar = () => {
          campoVisible.textContent = cantidad;
          campoInvisible.value = cantidad;
        }
        contador.querySelector('.contador__incrementar').addEventListener('click', () => {
          if (cantidad < 10) cantidad++;
          actualizar();
        });
        contador.querySelector('.contador__decrementar').addEventListener('click', () => {
          if (cantidad > 0) cantidad--;
          actualizar();
        });
      });
    }
  };
  xhr.send();
}

document.getElementById("aceptar").addEventListener("click", () => {
  let tarjeta = document.getElementById("tarjeta").value;
  let formulario = document.getElementById("formulario");
  let seccion = document.createElement("section");
  let contenedor = document.createElement("div");
  let blackscreen = document.createElement("div");
  let titulo = document.createElement("h3");

  seccion.className = "submit";
  blackscreen.className = "submit__blackscreen";
  contenedor.className = "submit__contenedor";

  formulario.appendChild(seccion);
  seccion.appendChild(blackscreen);
  seccion.appendChild(contenedor);
  contenedor.appendChild(titulo);

  if(tarjeta > 0) {
    let subtitulo = document.createElement("h4");
    let input = document.createElement("input");
    let boton = document.createElement("button");
    input.type = "number";
    input.name = "pin";
    input.min = 0;
    boton.textContent = "Aceptar";
    boton.type = "submit";
    titulo.textContent = "El cliente ya ha abonado?";
    subtitulo.textContent = "Introduzca el pin de seguridad para " + tarjeta
    contenedor.appendChild(subtitulo);
    contenedor.appendChild(input);
    contenedor.appendChild(boton);
  } else titulo.textContent = "Introduzca un numero de tarjeta";

  document.querySelector(".submit__blackscreen").addEventListener("click", () => {
    document.querySelector(".submit").remove();
  });
});