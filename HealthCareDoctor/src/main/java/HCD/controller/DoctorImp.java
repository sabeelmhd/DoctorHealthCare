package HCD.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import HCD.model.DoctorRegister;
import HCD.util.dbConnect;

public class DoctorImp {
	private static Connection con;
	private PreparedStatement preparedStatement;
	
	public ArrayList<DoctorRegister> getDoctors() {

		ArrayList<DoctorRegister> doctorArrayList = new ArrayList<>();
		String query = "SELECT * FROM doctors ORDER BY id";

		try {
			con = dbConnect.initializeDatabase();
			preparedStatement = con.prepareStatement(query);
			ResultSet resultSet = preparedStatement.executeQuery();


			while (resultSet.next()) {

				DoctorRegister doc = new DoctorRegister();
				doc.setId(resultSet.getInt(1));
				doc.setName(resultSet.getString(2));
				doc.setEmail(resultSet.getString(3));
				doc.setPassword(resultSet.getString(4));
				doc.setPhone(resultSet.getString(5));
				doc.setAddress(resultSet.getString(6));
				doctorArrayList.add(doc);
			}
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());

		} 
		
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return doctorArrayList;
	}
	
	public DoctorRegister getDoctorByID(int DoctorId) {
		// TODO Auto-generated method stub
		DoctorRegister doc = new DoctorRegister();

		String Query = "SELECT * FROM doctors WHERE id = ?";

		try {
			con = dbConnect.initializeDatabase();
			preparedStatement = con.prepareStatement(Query);
			preparedStatement.setInt(1, DoctorId);
			ResultSet resultSet = preparedStatement.executeQuery();


			while (resultSet.next()) {

				doc.setId(resultSet.getInt(1));
				doc.setName(resultSet.getString(2));
				doc.setEmail(resultSet.getString(3));
				doc.setPhone(resultSet.getString(5));
				doc.setAddress(resultSet.getString(6));

			}
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());

		} 
		
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return doc;
	}
	
	public boolean editDoctor(DoctorRegister doc) {
		// TODO Auto-generated method stub

		String editQuery = "UPDATE doctors SET  name = ?, email = ? , phone = ?, address = ?  WHERE id = ?";

		try {
			con =dbConnect.initializeDatabase();
			preparedStatement = con.prepareStatement(editQuery);

			preparedStatement.setString(1, doc.getName());
			preparedStatement.setString(2, doc.getEmail());
			preparedStatement.setString(3, doc.getPhone());
			preparedStatement.setString(4, doc.getAddress());
			preparedStatement.setInt(5, doc.getId());

			preparedStatement.executeUpdate();


		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
			return false;

		} 
		
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return true;

	}

	public boolean deleteDoctor(int DoctorId) {
		// TODO Auto-generated method stub
		String deleteQuery = "DELETE FROM doctors WHERE ID = ?";

		try {
			con = dbConnect.initializeDatabase();
			preparedStatement = con.prepareStatement(deleteQuery);


			preparedStatement.setInt(1, DoctorId);
			preparedStatement.executeUpdate();



		} catch (SQLException | ClassNotFoundException | NumberFormatException e) {
			System.out.println(e.getMessage());
			return false;

		} 
		
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return true;

	}
}



