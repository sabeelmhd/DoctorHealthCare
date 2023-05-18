package HCD.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import HCD.controller.DoctorImp;
import HCD.model.DoctorRegister;

/**
 * Servlet implementation class SupplierDetails
 */
@WebServlet("/DoctorDetailsServ")
public class DoctorDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		ArrayList<DoctorRegister> array = new ArrayList<DoctorRegister>();
		
		DoctorImp docImp = new DoctorImp();
		
		array = docImp.getDoctors();
		
		request.setAttribute("array", array);
		RequestDispatcher dis = request.getRequestDispatcher("doctorDetails.jsp");
		dis.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
