function init() {
    alert('iniciando...');
}

function calcular() {
    var isHomem = document.getElementById("option2").checked;
    var idade = document.getElementById("idade").value;
    var altura = document.getElementById("altura").value;
    var peso = document.getElementById("peso").value;
    if (isHomem) {
        alert('É homem!!!');
    } else {
        alert('É mulher!!!');
    }
    alert('Idade = ' + idade);
    alert('Altura = ' + altura);
    alert('Peso = ' + peso);
}