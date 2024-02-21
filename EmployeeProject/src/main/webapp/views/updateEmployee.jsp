<%@page language="java" %>
<%@page import="com.example.project.EmployeeProject.Entity.Employee" %>
<html>
<head>
    <title>UPDATE EMPLOYEE</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        form {
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"] {
            width: calc(100% - 12px);
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        button[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form action="/updateEmployee">
        <label for="empId">Enter Employee ID:</label>
        <input type="text" id="empId" name="empId" required><br>
        <label for="EmployeeFirstName">Enter Employee First Name:</label>
        <input type="text" id="EmployeeFirstName" name="empFirstName" required><br>
        <label for="EmployeeLastName">Enter Employee Last Name:</label>
        <input type="text" id="EmployeeLastName" name="empLastName" required><br>
        <label for="role">Enter Employee Role:</label>
        <input type="text" id="role" name="role" required><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
