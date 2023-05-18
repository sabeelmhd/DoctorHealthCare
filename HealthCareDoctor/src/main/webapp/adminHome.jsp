<!DOCTYPE html>
<html>
<head>
  <title>Admin Home</title>
  <style>
    body {
      background-color: #f8f9fa;
      font-family: Arial, sans-serif;
    }

    .admin-container {
      max-width: 500px;
      margin: 100px auto;
      padding: 30px;
      border: 1px solid #dcdcdc;
      border-radius: 5px;
      background-color: #fff;
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    h1 {
      color: #333;
    }

    p {
      color: #666;
      margin-bottom: 20px;
    }

    .admin-button {
      display: inline-block;
      padding: 10px 20px;
      background-color: #007bff;
      color: #fff;
      text-decoration: none;
      border-radius: 5px;
      transition: background-color 0.2s ease-in-out;
    }

    .admin-button:hover {
      background-color: #0062cc;
    }
  </style>
</head>
<body>
  <div class="admin-container">
    <h1>Welcome, Admin!</h1>
    <p>You have access to the admin panel.</p>
    <a href="patientDetailsServ" class="admin-button">Manage Users</a>
    <a href="DoctorDetailsServ" class="admin-button">Manage Doctors</a>
    <a href="login.jsp" class="admin-button">Logout</a>
  </div>
</body>
</html>
