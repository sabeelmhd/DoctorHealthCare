package HCD.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import HCD.model.DoctorRegister;
import HCD.controller.DoctorImp;

@WebServlet("/updateDoctor")
public class updateDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		DoctorRegister doc = new DoctorRegister();
		
		doc.setId(Integer.parseInt(request.getParameter("id")));
		doc.setName(request.getParameter("name"));
		doc.setEmail(request.getParameter("email"));
		doc.setPhone(request.getParameter("phone"));
		doc.setAddress(request.getParameter("address"));
		
		DoctorImp DocImp = new DoctorImp();
		boolean check;
		
		check = DocImp.editDoctor(doc);
		
		if(check) {
			RequestDispatcher dis = request.getRequestDispatcher("DoctorDetailsServ");
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("adminHome.jsp");
			dis.forward(request, response);
		}
	}

}

