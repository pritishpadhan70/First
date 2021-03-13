
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import com.util.DBUtility;


@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dp = null;
		Integer userId=Integer.parseInt(request.getParameter("userid"));
		Integer pass=Integer.parseInt(request.getParameter("pass"));
		
		if(isValidUser(userId, pass)) {
			HttpSession session = request.getSession();
			session.setAttribute("userid", userId);
			response.sendRedirect("home.jsp");		
		}
		else {
			
			request.setAttribute("msg", "Your credentials are incorrect.");
			dp=this.getServletContext().getRequestDispatcher("/login.jsp");
			dp.forward(request, response);
			/*this.getServletContext().getRequestDispatcher("/Error.html");*/
		}	
	}
	public static boolean isValidUser(Integer userId, Integer pass) {
		boolean isValid = false;
		final String query = "SELECT * FROM USERDATA where USER_ID=" + userId + " and PASSWORD = " + pass;
		try {
			ResultSet rs = DBUtility.getResultSet(query);
			
			if (rs.next())
				isValid = true;
		} catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			try {
				DBUtility.conn.close();
				DBUtility.stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return isValid;
	}
}
