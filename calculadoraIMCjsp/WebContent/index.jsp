<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calcular IMC</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

    <div class="container" style="background-color:white">
        <div>
            <h1>Calcule seu IMC e saiba se est� no peso ideal</h1>
            <p>IMC � a sigla para �ndice de Massa Corporal que serve para avaliar o peso do indiv�duo em rela��o � sua altura
                e assim indicar se est� dentro do peso ideal, acima ou abaixo do peso desejado.

                <p>Estar dentro do peso certo � importante porque estar acima ou abaixo peso influencia na sa�de, aumentando
                    o risco de doen�as como desnutri��o quando se est� abaixo do peso, e AVC e infarto, quando se est� acima
                    do peso. Assim, � comum os m�dicos, enfermeiros e nutricionistas avaliarem o peso da pessoa nas consultas
                    de rotina para verificar a possibilidade de doen�as que a pessoa pode estar pre-disposta.</p>
                <h1>Como calcular o IMC</h1>
                <p>O c�lculo do IMC deve ser feito usando a seguinte f�rmula matem�tica: Peso � altura x altura. Mas voc� tamb�m
                    pode saber se est� dentro do peso ideal utilizando a nossa calculadora online, apenas inserindo seus
                    dados:
                </p>
        </div>
        <div class="row justify-content-center">
            <div class="col-4" style="background-color: darkgray">
                <form action="calcularIMC">
                    <div class="text-center" style="font-size: 22px;">
                        <label>Sexo:</label>
                    </div>
                    <div class="text-center form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-secondary">
                                <input type="radio" name="options" id="option2" autocomplete="off"> Homem
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="options" id="option3" autocomplete="off"> Mulher
                            </label>
                        </div>
                    </div>
                    <div class="form-group" style="font-size: 22px;">
                        <label for="exampleInputEmail1">Idade:</label>
                        <input type="number" class="form-control" name="idade" id="idade" aria-describedby="emailHelp" placeholder="idade">
                    </div>
                    <div class="form-group" style="font-size: 22px;">
                        <label for="exampleInputPassword1">Altura:</label>
                        <input type="number" class="form-control" name="altura" id="altura" placeholder="Altura">
                    </div>
                    <div class="form-group" style="font-size: 22px;">
                        <label for="exampleInputEmail1">Peso:</label>
                        <input type="number" class="form-control" name="peso" id="peso" aria-describedby="emailHelp" placeholder="peso">
                    </div>
                    <div class="text-center" style="font-size: 22px;">
                        <label>Atividade F�sica</label>
                    </div>
                    <div class="text-center form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-secondary active">
                                <input type="radio" name="options" id="option1" autocomplete="off" checked> Sedent�ria
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="options" id="option2" autocomplete="off"> Moderada
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="options" id="option3" autocomplete="off"> Intensa
                            </label>
                        </div>
                        <div class="text-center" style="padding-top: 1em">
                            <input class="btn btn-secondary active" type="submit" value="Calcular" style="background-color: #2c2e31">
                        </div>
                    </div>
                    
                </form>
            </div>
        </div>
  
        <!--Div para mostrar o resultado(Dive oculta)-->
        <div id="resultado" class="form-group" style="margin-top: 16px; display: <%= request.getAttribute("resultado") != null? "block": "none" %>; background-color: darkgrey;">
            <div class="reslt" style="margin-left: 4pt">
                <h1>Resultado</h1>
            </div>
          <div>
            	<%= request.getAttribute("resultado") %>
            </div>
            
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">Categoria</th>
                        <th scope="col">Classifica��o</th>
                        <th scope="col">IMC</th>
                        <th scope="col">PESO</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Magreza</td>
                        <td> Menor que 18.5</td>
                        <td>menor 55.4 Kg</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Normal</td>
                        <td>18.5 a 24.9 </td>
                        <td>55.4 a 74.5 Kg</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Sobrepeso</td>
                        <td>24.9 a 30</td>
                        <td>74.5 a 89.8 Kg</td>
                    </tr>
                    <tr>
                        <th scope="row">4</th>
                        <td>Obesidade</td>
                        <td>Maior que 30</td>
                        <td>Maior que 89.8 Kg</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div>
            <h1>O que significam os resultados do IMC</h1>
            <p>Cada resultado do IMC deve ser avaliado por um profissional de sa�de.</p>
        </div>
        <div class="text-center">
            <img src="img/indeceMC.jpg" class="rounded" alt="indeceMC" width="640" height="427" style="padding: 1em">
        </div>
        <div>
            <p>A tabela a seguir indica os poss�veis resultados do IMC, de acordo com a Organiza��o Mundial da Sa�de, sendo
                que o IMC entre 18,5 a 24,9 representa o peso ideal e o menor risco de algumas doen�as.</p>
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Classifica��o</th>
                    <th scope="col">IMC</th>
                    <th scope="col">O que pode acontecer</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Muito abaixo do peso</td>
                    <td>16 a 16,9 kg/m2</td>
                    <td>Queda de cabelo, infertilidade, aus�ncia menstrual</td>
                </tr>
                <tr>
                    <td>Abaixo do peso</td>
                    <td>17 a 18,4 kg/m2</td>
                    <td>Fadiga, stress, ansiedade</td>
                </tr>
                <tr>
                    <td>Peso normal</td>
                    <td>18,5 a 24,9 kg/m2</td>
                    <td>Menor risco de doen�as card�acas e vasculares</td>
                </tr>
                <tr>
                    <td>Acima do peso</td>
                    <td>25 a 29,9 kg/m2</td>
                    <td>Fadiga, m� circula��o, varizes</td>
                </tr>
                <tr>
                    <td>Obesidade Grau I</td>
                    <td>30 a 34,9 kg/m2</td>
                    <td>Diabetes, angina, infarto, aterosclero</td>
                </tr>
                <tr>
                    <td>Obesidade Grau II</td>
                    <td>35 a 40 kg/m2</td>
                    <td>Apneia do sono, falta de ar</td>
                </tr>
                <tr>
                    <td>Obesidade Grau III</td>
                    <td>maior que 40 kg/m2</td>
                    <td>Refluxo, dificuldade para se mover, escaras, diabetes, infarto, AVC</td>
                </tr>
            </tbody>
        </table>
        <div style="text-align: justify">
            <p>Quem n�o estiver dentro do peso ideal deve adequar a alimenta��o e fazer exerc�cios para conseguir atingir o
                peso mais indicado para sua altura e idade.
            </p>
            <p>Quando se est� abaixo do peso ideal deve-se aumentar o consumo de alimentos ricos em nutrientes para que o corpo
                tenha o necess�rio para se proteger de doen�as. J� quem est� acima do peso ideal deve consumir menos calorias
                e fazer algum tipo de atividade f�sica para eliminar os estoques de gordura, que aumenta o risco de doen�as
                card�acas.
            </p>
        </div>
    </div>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>