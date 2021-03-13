
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

@WebServlet("/AddData")
public class AddData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dp = this.getServletContext().getRequestDispatcher("/Add.jsp");
		
		Integer userid=Integer.parseInt(request.getParameter("userid"));
		Integer pass=Integer.parseInt(request.getParameter("pass"));
		String email=request.getParameter("email");
		Long mobno=Long.parseLong(request.getParameter("mobno"));
		String name=request.getParameter("name");
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String uname = "scott";
		String pasw = "tiger";
		Connection conn = null;
		Statement stmt = null;
		int count=0;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url,uname, pasw);
			stmt = conn.createStatement();
			count=stmt.executeUpdate("INSERT INTO USERDATA VALUES("+userid+","+pass+",'"+email+"',"+mobno+",'"+name+"')");
			
		
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			try {
				conn.close();
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
		}
		boolean isAvailable=false;
		if(count > 0)
			isAvailable=true;
		request.setAttribute("isAvailable", isAvailable);
		dp.forward(request, response);
			
	}
}
