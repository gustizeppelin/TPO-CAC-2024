function validateForm() {
    var nombre = document.getElementById('nombre').value;
    var email = document.getElementById('email').value;
    var mensaje = document.getElementById('mensaje').value;
    var motivo = document.getElementById('motivo').value;
    var contactMethod = document.querySelector('input[name="contactMethod"]:checked');

    if (nombre === '' || email === '' || mensaje === '' || motivo === '' || contactMethod === null) {
        alert('Por favor, completa todos los campos obligatorios.');
        return false;
    }

    return true;
}
