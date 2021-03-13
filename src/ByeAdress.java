

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ByeAdress
 */
@WebServlet("/Adress")
public class ByeAdress extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ByeAdress() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String firstName=request.getParameter("firstName");
		String middleName=request.getParameter("middleName");
		String lastName=request.getParameter("lastName");
		String houseNo=request.getParameter("houseNo");
		String cityName=request.getParameter("cityName");
		String pinNo=request.getParameter("pinNo");
		
		System.out.println(firstName+" \n"+middleName+" \n"+lastName+" \n"+
		houseNo+" \n"+cityName+" \n"+pinNo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("details.jsp");
		request.setAttribute("Name", "Temp"); // set your String value in the attribute
		dispatcher.forward( request, response );*/
		
		RequestDispatcher dp = this.getServletContext().getRequestDispatcher("/WEB-INF/Bye.html");
		dp.forward(request, response);
	}
}


