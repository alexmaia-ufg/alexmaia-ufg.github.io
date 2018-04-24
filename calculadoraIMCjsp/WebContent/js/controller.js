function init() {
    alert('iniciando...');
}

function calcular() {
    var isHomem = document.getElementById("option2").checked;
    var idade = document.getElementById("idade").value;
    var altura = document.getElementById("altura").value;
    var peso = document.getElementById("peso").value;
    //Calculo do IMC
    var imc = peso / (altura * altura);
    imc = parseFloat(imc.toFixed(1));
    peso = parseFloat(peso);
    
    //Teste de categorias 
    console.log(imc,peso)
    if(imc < 18.5){
        mudarEstado(' Categoria 1! Sinto muito, mas o seu IMC é de ' +imc+ ', por isso você está abaixo do peso e deveria ganhar alguns quilos à mais!')
    }else if(imc > 18.5 && imc < 24.9){
        mudarEstado(' Categoria 2! Parabéns, o seu IMC é de ' +imc+ ', e você está dentro do peso adequado!')
    }else if(imc > 25 && imc < 29.9){
        mudarEstado(' Categoria 3! Sinto muito, o seu IMC é de ' +imc+ ', e você está acima do peso e deveria emagrecer, cuide da sua Saúde!');
    }else if(imc > 30){
        mudarEstado(' Catergoria 4! Sinto muito, mas o seu IMC é de ' +imc+ ', por isso você está acima do peso e deveria emagrecer, cuide da sua Saúde!');
    }else {
        mudarEstado(' Cateia Indefinida'); 
    }
}
//Função para mostrar o resultado(Div oculta)
function mudarEstado(categoriaIMC) {
    var display = document.getElementById("resultado").style.display;
    var texto = document.getElementById('textoResultado');
    if (display == "none")
      document.getElementById("resultado").style.display = 'block';
    else
      document.getElementById("resultado").style.display = 'none';

    texto.innerHTML = categoriaIMC;
  }

