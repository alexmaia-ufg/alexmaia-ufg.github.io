package calculadora.imc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcularIMCServlet
 */
public class CalcularIMCServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CalcularIMCServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Double idade = Double.valueOf(request.getParameter("idade"));
		Double altura = Double.valueOf(request.getParameter("altura"));
		Double peso = Double.valueOf(request.getParameter("peso"));
      
         //Calculo do IMC
		Double imc = peso / (altura * altura);
		String mensagem = null;
         if(imc < 18.5){
             mensagem = " Categoria 1! Sinto muito, mas o seu IMC é de " +imc+ ", por isso você está abaixo do peso e deveria ganhar alguns quilos à mais!";
         }else if(imc > 18.5 && imc < 24.9){
             mensagem = " Categoria 2! Parabéns, o seu IMC é de " +imc+ ", e você está dentro do peso adequado!";
         }else if(imc > 25 && imc < 29.9){
             mensagem = " Categoria 3! Sinto muito, o seu IMC é de " +imc+ ", e você está acima do peso e deveria emagrecer, cuide da sua Saúde!";
         }else if(imc > 30){
             mensagem = " Catergoria 4! Sinto muito, mas o seu IMC é de " +imc+ ", por isso você está acima do peso e deveria emagrecer, cuide da sua Saúde!";
         }else {
             mensagem = " Cateia Indefinida"; 
         }
         request.setAttribute("resultado", mensagem);
         request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
