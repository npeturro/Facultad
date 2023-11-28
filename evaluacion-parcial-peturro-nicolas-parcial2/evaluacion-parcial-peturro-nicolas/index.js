
let img = 0;

function cambiarImg() {

    const imagenes = ["istockphoto-913062404-612x612.jpg", "istockphoto-1153469287-612x612.jpg", "img/juana.jpg"];
    const imagen = document.getElementById("imagen");

    imagen.src = imagenes[img % imagenes.length];
    img = (img + 1) % imagenes.length;

}

setInterval(cambiarImg, 15000);

function cambiarColorRelacion() {

    let tipoRelacion = document.getElementsByName("relacion");
    let relacionElemento = '';

    for (let elemento of tipoRelacion) {
        if (elemento.checked) {
            relacionElemento = elemento.value;
        }
    }

    const backColor = document.querySelector('.colorResultado');
    if (relacionElemento === "autonomo") {
        backColor.style.backgroundColor = "magenta";
    } else if (relacionElemento === "monotributista") {
        backColor.style.backgroundColor = "blue";
    } else if (relacionElemento === "dependencia") {
        backColor.style.backgroundColor = "#BFFF00";
    }
}

function contadorEspacios() {
    let texto = document.getElementById("msj");
    let num = document.querySelector(".contador");
    let espacio = texto.value.split(" ");
    let espacios = espacio.length - 1;

    num.textContent = "Cantidad de espacios: " + espacios;
    
}

setInterval(contadorEspacios, 100);

function validarDatos() {

    let name = document.getElementById('name').value;
    let email = document.getElementById('e-mail').value;
    let subject = document.getElementById('subject').value;
    let age = document.getElementById('age').value;
    let experiencia = document.getElementById('experiencia').value;
    let remuneración = document.getElementById('dinero').value;
    let tipoRelacion = document.getElementsByName("relacion");
    let relacionElemento = '';
    for (let elemento of tipoRelacion) {
        if (elemento.checked) {
            relacionElemento = elemento.value;
        }
    }
    
    const borderName = document.querySelector('.name');
    const borderEmail = document.querySelector('.email');
    const borderSubject = document.querySelector('.subject');
    const borderAge = document.querySelector('.age');
    const borderExperiencia = document.querySelector('.experiencia');
    const borderRemuneracion = document.querySelector('.remuneracion');
    const borderRelacion = document.querySelector('.relacion_pretendida');
   
    if (name === '') {
        borderName.style.border = "1.5px solid red";
        alert("Debe completar el nombre");
        document.getElementById("name").focus();
    }
    if (email === '') {
        borderEmail.style.border = "1.5px solid red";
        alert("Debe completar el email");
        document.getElementById("e-mail").focus();
    }
    if (subject === '') {
        borderSubject.style.border = "1.5px solid red";
        alert("Debe completar el subject");
        document.getElementById("subject").focus();
    }
    if (age === '') {
        borderAge.style.border = "1.5px solid red";
        alert("Debe completar la edad");
        document.getElementById("age").focus();
    }
    if (experiencia === '') {
        borderExperiencia.style.border = "1.5px solid red";
        alert("Debe completar la experiencia");
        document.getElementById("experiencia").focus();
    }
    if (remuneración === '') {
        borderRemuneracion.style.border = "1.5px solid red";
        alert("Debe ingresar una remuneración");
        document.getElementById("dinero").focus();
    }
    if (relacionElemento === '') {
        borderRelacion.style.border = "1.5px solid red";
        alert("Debe seleccionar una relación de dependencia");
        document.getElementById("relacion").focus();
    }
}

function categoria() {
    
    let experiencia = document.getElementById('experiencia').value;

    let categoria = "";
    if (experiencia <= 5) {
        categoria = "Junior";
    } else if (experiencia >= 6 && experiencia <= 10){
        categoria = "Semi-Senior";
    } else if (experiencia >= 11 && experiencia <= 15){
        categoria = "Senior";
    } else if (experiencia >= 15){
        categoria = "Expert";
    } 

    return categoria;

}

function retencion() {

    let retencion = 0;
    let remuneracion = document.getElementById('dinero').value;
    let tipoRelacion = document.getElementsByName("relacion");
    let relacionElemento = '';
    for (let elemento of tipoRelacion) {
        if (elemento.checked) {
            relacionElemento = elemento.value;
        }
    }

    if (relacionElemento === "autonomo") {
        retencion = remuneracion * (0.10);
    } else if (relacionElemento === "monotributista") {
        retencion = retencion;
    } else if (relacionElemento === "dependencia") {
        retencion = remuneracion * (0.30);
    }

    return retencion
    
}



function mostrarDatos() {
  

    let name = document.getElementById('name').value;
    let email = document.getElementById('e-mail').value;
    let subject = document.getElementById('subject').value;
    let age = document.getElementById('age').value;
    let experiencia = document.getElementById('experiencia').value;
    let remuneracion = document.getElementById('dinero').value;
    let mensaje = document.getElementById('msj').value;
    let tipoRelacion = document.getElementsByName("relacion");
    let relacionElemento = '';
    for (let elemento of tipoRelacion) {
        if (elemento.checked) {
            relacionElemento = elemento.value;
        }
    }
    
    let remuneracion_neta = 0;
    remuneracion_neta = remuneracion - retencion();

    const datos_candidatoHTML = `

        <h2><u>DATOS CANDIDATO</u></h2>
        <p><strong>Nombre:</strong> ${name}</p>
        <p><strong>E-mail:</strong><a>${email}</a></p>
        <p><strong>Edad:</strong></p>
        <p><strong>Fecha de Nacimiento:</strong> ${age}</p>
        <p><strong>Años de Experiencia:</strong> ${experiencia}</p>
        <p><strong>Conocimientos:</strong></p>
        <p><strong>Remuneración Pretendida:</strong> ${remuneracion}</p>
        <p><strong>Remuneración Neta:</strong> ${remuneracion_neta}</p>
        <p><strong>Subject:</strong> ${subject}</p>
        <p><strong>Mensaje:</strong> ${mensaje}</p>

        <h2><u>RESUMEN</u></h2>
        <p><strong>Categoria:</strong> ${categoria()}</p>
        <p><strong>Rango Etario:</strong></p>


    `;

    document.getElementById("datos_candidato").innerHTML = datos_candidatoHTML;

    const formulario = document.querySelector('.formulario');
    formulario.style.display = 'none';
    
    
}