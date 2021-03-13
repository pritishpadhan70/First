

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddressDetails
 */
@WebServlet("/details2")
public class AddressDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName=request.getParameter("firstName");
		String middleName=request.getParameter("middleName");
		String lastName=request.getParameter("lastName");
		String houseNo=request.getParameter("houseNo");
		String cityName=request.getParameter("cityName");
		String pinNo=request.getParameter("pinNo");
		
		RequestDispatcher dp = this.getServletContext().getRequestDispatcher("/WEB-INF/Details.jsp");
		request.setAttribute("firstName", firstName); 
		request.setAttribute("middleName", middleName); 
		request.setAttribute("lastName", lastName); 
		request.setAttribute("houseNo", houseNo); 
		request.setAttribute("cityName", cityName); 
		request.setAttribute("pinNo", pinNo); 
		dp.forward(request, response);
		
	}


}
