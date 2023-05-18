<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HCD.model.DoctorRegister" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Doctor Details</title>
    <link rel="stylesheet" type="text/css" href="css/update-style.css">
</head>
<body>
<%
	DoctorRegister doc = new DoctorRegister();
		
	doc = (DoctorRegister)request.getAttribute("Doctor");
	%>
    <div class="register-form">
        <h2 class="form-title">Update Doctor Details</h2>
        <form method="post" action="updateDoctor" class="register-form" id="register-form">
            <div class="form-group">
                <label for="id">ID</label>
                <input type="hidden" name="id" value="<%= doc.getId() %>">
                <%= doc.getId() %>
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="name" id="name" placeholder="Your Name" value="<%= doc.getName() %>">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" placeholder="Email" value="<%= doc.getEmail() %>">
            </div>
            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="text" name="phone" id="phone" placeholder="Phone" value="<%= doc.getPhone() %>">
            </div>
            <div class="form-group">
                <label for="Address">Address</label>
                <input type="text" name="address" id="address" placeholder="address" value="<%= doc.getAddress() %>">
            </div>
            <div class="form-group form-button">
                <input type="submit" name="update" id="update" class="form-submit" value="Update">
            </div>
        </form>
        <div class="login-link-container">
            <p>Update Done? <a href="patientDetailsServ">Go back to list</a></p>
        </div>
    </div>
</body>
</html>
