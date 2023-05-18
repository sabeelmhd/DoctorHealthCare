<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="HCD.model.DoctorRegister" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Details</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        button {
            background-color: #007BFF;
            border: none;
            color: white;
            padding: 10px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }

        button:hover {
            background-color: #0062cc;
        }

        a {
            text-decoration: none;
        }

        .main {
            margin-left: 200px; /* Same as the width of the sidebar */
           	margin-right: 200px; /* Same as the width of the sidebar */
            padding: 0px 10px;
        }

        @media screen and (max-height: 450px) {
            .sidebar {
                padding-top: 15px;
            }

            .sidebar a {
                font-size: 18px;
            }
        }
        
        /* Your custom color theme */
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        h2 {
            color: #333;
        }

        table {
            background-color: #fff;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        button {
            background-color: #007bff;
        }

        button:hover {
            background-color: #064579;
        }
        
        .search-container {
            margin-bottom: 20px;
        }

        .search-container input[type=text] {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .search-container button {
            padding: 8px 16px;
        }
    
    
    </style>
</head>
<body>
    <div class="main">
        <h2>Doctor Details</h2>
         <div class="search-container">
            <input type="text" id="searchInput" placeholder="Search by name...">
            <button onclick="searchByName()">Search</button>
        </div>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Password</th>
                <th>Address</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
            <% ArrayList<DoctorRegister> array = (ArrayList<DoctorRegister>) request.getAttribute("array");
                for (DoctorRegister docRegister : array) { %>
                <tr>
                    <td><%= docRegister.getId() %></td>
                    <td><%= docRegister.getName() %></td>
                    <td><%= docRegister.getEmail() %></td>
                    <td><%= docRegister.getPassword() %></td>
                    <td><%= docRegister.getPhone() %></td>
                    <td><%= docRegister.getAddress() %></td>
                    <td><a href="DeleteDoctor?id=<%= docRegister.getId() %>"
                           onclick="return confirm('Are you sure you want to delete this customer?')">
                           <button>Delete</button>
                        </a>
                    </td>
     						<td><a href="GetDetailsById?id=<%=docRegister.getId()%>"><button >Update</button></a></td>
                </tr>
            <% } %>
        </table>
        <a href="addDoctor.jsp"><button>Add New Doctor</button></a>
        
        <a href="adminHome.jsp"><button>Go back to main menu</button></a>
        
        <script>
        function searchByName() {
            var input = document.getElementById("searchInput");
            var filter = input.value.toUpperCase();
            var table = document.getElementsByTagName("table")[0];
            var rows = table.getElementsByTagName("tr");

            for (var i = 1; i < rows.length; i++) {
                var nameColumn = rows[i].getElementsByTagName("td")[1];
                var name = nameColumn.textContent || nameColumn.innerText;

                if (name.toUpperCase().indexOf(filter) > -1) {
                    rows[i].style.display = "";
                } else {
                    rows[i].style.display = "none";
                }
            }
        }
    	</script>
</div>
</body>
</html>