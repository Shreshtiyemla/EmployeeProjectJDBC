<%@ page language="java" %>
<%@ page import = "java.util.List" %>
<%@ page import ="com.example.project.EmployeeProject.Entity.Employee" %>
<html>
<head>
    <title>VIEW ALL THE EMPLOYEES</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid #dddddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Employee ID</th>
                <th>Role</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Employee> employeeList = (List<Employee>) request.getAttribute("EmployeeList");
                for (Employee employee : employeeList) {
            %>
            <tr>
                <td><%= employee.getEmpFirstName() + " " + employee.getEmpLastName() %></td>
                <td><%= employee.getEmpId() %></td>
                <td><%= employee.getRole() %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>

