<%@page language="java" %>
<%@ page import = "java.util.List" %>
<%@ page import ="com.example.project.EmployeeProject.Entity.Employee" %>
<html>
<head>
    <title>Delete Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        p {
            font-size: 18px;
            margin-bottom: 20px;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
            <% boolean deletedEmployee = (boolean) request.getAttribute("deleteEmployee");
                if (deletedEmployee) { %>
                <p>Employee deleted successfully.</p>
            <% } else { %>
                <p>Employee not found.</p>
            <% } %>
        </div>

</body>
</html>
