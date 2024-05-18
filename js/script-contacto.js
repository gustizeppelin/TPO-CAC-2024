function validateForm() {
    var nombre = document.getElementById('nombre').value;
    var email = document.getElementById('email').value;
    var celular = document.getElementById('celular').value;
    var mensaje = document.getElementById('mensaje').value;
    var motivo = document.getElementById('motivo').value;
    var contactMethod = document.querySelector('input[name="contactMethod"]:checked');

    if (nombre === '' || email === ''|| celular === '' || mensaje === '' || motivo === '' || contactMethod === null) {
        alert('Por favor, completa todos los campos obligatorios.');
        return false;
    }

    // Mostrar pop-up con un mensaje de agradecimiento
    var mensajePopUp = '¡Gracias por contactarnos, ' + nombre + '!'+' Pronto nos comunicaremos';
    alert(mensajePopUp);

    //Borra los datos ingresados después y recarga la página
    setTimeout(function() {
        document.getElementById('contactForm').reset();
        location.reload();
    }, 0);

    // Devuelve false para evitar que el formulario se envíe de forma tradicional
    return false;
}