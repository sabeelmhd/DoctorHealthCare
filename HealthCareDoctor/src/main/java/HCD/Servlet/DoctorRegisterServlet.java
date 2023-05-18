package HCD.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import HCD.util.dbConnect;

@WebServlet("/doctorReg")
public class DoctorRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			Connection con = dbConnect.initializeDatabase();
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			
			Statement st = con.createStatement();
			int rs = st.executeUpdate("INSERT INTO doctors (name, email, password, phone, address) VALUES ('"+name+"', '"+email+"','"+password+"','"+phone+"','"+address+"')");
			if(rs > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("DoctorDetailsServ");
				rd.forward(request, response);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
