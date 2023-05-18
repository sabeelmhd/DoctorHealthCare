<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
/* Set the background color of the page */
body {
  background-color: #f8f9fa;
}

/* Style the signup container */
.signup-container {
  max-width: 500px;
  margin: 50px auto;
  padding: 30px;
  border: 1px solid #dcdcdc;
  border-radius: 5px;
  background-color: #fff;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}

/* h1 styles */
h1 {
  font-size: 48px;
  font-family: 'Montserrat', sans-serif;
  font-weight: bold;
  color: #333;
  text-align: center;
  text-transform: uppercase;
  margin-top: 50px;
}

/* h2 styles */
h2 {
  font-size: 32px;
  font-family: 'Roboto', sans-serif;
  font-weight: bold;
  color: #007bff;
  text-align: center;
  margin-bottom: 30px;
}

/* Import fonts */
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap');

/* Style the labels */
label {
  display: block;
  margin-bottom: 10px;
  color: #666;
  font-size: 16px;
}

/* Style the input fields */
input[type="text"],
input[type="email"],
input[type="password"],
textarea {
  width: 95%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 5px;
  background-color: #f5f5f5;
  font-size: 16px;
  margin-bottom: 20px;
  box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.1);
}

/* Style the submit button */
input[type="submit"] {
  display: block;
  width: 95%;
  padding: 12px;
  margin-top: 20px;
  margin-left: 10px;
  
  border: none;
  border-radius: 5px;
  background-color: #007bff;
  color: #fff;
  font-size: 18px;
  cursor: pointer;
  transition: background-color 0.2s ease-in-out;
}

input[type="submit"]:hover {
  background-color: #0056b3;
}

/* Style the login link container */
.login-link-container {
  text-align: center;
  margin-top: 20px;
}

.login-link-container a {
  color: #007bff;
  text-decoration: none;
}

.login-link-container a:hover {
  text-decoration: underline;
}

</style>
  <title>Doctor Register</title>
</head>
<body>
  <div class="signup-container">
    <h2>Doctor Register</h2>
    <form method="post" action="doctorReg">
      <label for="name">Name</label>
      <input type="text" id="name" name="name" required>
      
      <label for="email">Email</label>
      <input type="email" id="email" name="email" required>
      
      <label for="phone">Phone</label>
      <input type="text" id="phone" name="phone" required>
      
      <label for="address">Address</label>
      <textarea id="address" name="address" rows="4" required></textarea>
      
      <label for="password">Password</label>
      <input type="password" id="password" name="password" required>
      
      <label for="confirm-password">Confirm Password</label>
      <input type="password" id="confirm-password" name="confirm-password" required>
      <span id="password-error" class="error-msg"></span>
      
      <input type="submit" value="Register">
    </form>
    <div class="login-link-container">
      <p>Go back to <a href="DoctorDetailsServ"> details</a></p>
    </div>
  </div>

  <script>
    const passwordInput = document.getElementById('password');
    const confirmPasswordInput = document.getElementById('confirm-password');
    const passwordError = document.getElementById('password-error');

    function validatePassword() {
      if (passwordInput.value !== confirmPasswordInput.value) {
        passwordError.textContent = 'Passwords do not match';
      } else {
        passwordError.textContent = '';
      }
    }

    confirmPasswordInput.addEventListener('keyup', validatePassword);
  </script>
</body>
</html>
