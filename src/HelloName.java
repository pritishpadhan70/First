

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloName
 */
@WebServlet("/HelloName")
public class HelloName extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = request.getParameter("firstName");
		String lastName =  request.getParameter("lastName");
		System.out.println(firstName+" ........ "+" ........ "+lastName);
		

	       RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/disply.html");
	        request.setAttribute("fname", firstName);
	        request.setAttribute("lname", lastName);
	       dispatcher.forward(request, response);
	}

	
}
