
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.User;


@WebServlet("/details")
public class UserData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uname = "scott";
	String pass = "tiger";
	int count = 0;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection con;

		ArrayList<User> list = new ArrayList<User>();
		Statement st;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, uname, pass);
			st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM USERDATA");
			

			while (rs.next()) {
				User user = new User();
				user.setUserId(rs.getInt("USERID"));
				user.setEmail(rs.getString("EMAIL"));
				user.setUserName(rs.getString("NAME"));
				user.setMobileNo(rs.getLong("MOBNO"));
				list.add(user);
				String name = rs.getString("NAME") + "		" + rs.getInt("USERID") + "		"
						+ rs.getInt("PASSWORD") + "		" + rs.getString("EMAIL") + "		"
						+ rs.getLong("MOBILE_NO");
				/* System.out.println(name); */
				System.out.println(user);
			}
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		RequestDispatcher dp = this.getServletContext().getRequestDispatcher("/show.jsp");
		request.setAttribute("list", list);
		dp.forward(request, response);

	}
}
