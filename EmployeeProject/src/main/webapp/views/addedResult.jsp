<%@page language="java" %>
<%@page import="com.example.project.EmployeeProject.Entity.Employee" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Added</title>
    <style>
        table {
            width: 50%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .container {
            text-align: center;
            margin-top: 20px;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <% Employee employe = (Employee) request.getAttribute("employee"); %>
    <div class="container">
        <% if (employe != null) { %>
            <table>
                <tr>
                    <th>EMPLOYEE ID</th>
                    <td><%= employe.getEmpId() %></td>
                </tr>
                <tr>
                    <th>EMPLOYEE FIRSTNAME</th>
                    <td><%= employe.getEmpFirstName() %></td>
                </tr>
                <tr>
                    <th>EMPLOYEE LASTNAME</th>
                    <td><%= employe.getEmpLastName() %></td>
                </tr>
                <tr>
                    <th>EMPLOYEE ROLE</th>
                    <td><%= employe.getRole() %></td>
                </tr>
            </table>
            <p> EMPLOYEE ADDED SUCCESSFULLY </p>
        <% } else { %>
            <p class="error">Employee details not found.</p>
        <% } %>
    </div>
</body>
</html>
