$(document).ready(function (){
    $(document).on('click', '#btnCifrado', function(){
        var abecedario = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 
            'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];

        /*
        var letra = $('#textoACifrar').val();

        var posicion = abecedario.indexOf(letra);

        var letra = abecedario[posicion+3];

        $('#textoACifrar').val(letra);
        */
    
        var texto = $('#textoACifrar').val();
        var arrayDeLetras = texto.split('');
        var nuevoArrayDeLetras = [];

        for (var i = 1; i <= arrayDeLetras.length; i++) {
            var posicion = abecedario.indexOf(arrayDeLetras[i]);
            nuevoArrayDeLetras.push(arrayDeLetras[posicion+3]);
            //algun error por aqui porque me devuelve letras aleatorias
        }
        var cifrado = nuevoArrayDeLetras.join("");

        $('#textoACifrar').val(cifrado);
    });
});