<%@page language="java" %>
<html>
<head>
    <title>EMPLOYEE SHEET</title>
    <style>
        /* CSS styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .link {
            display: block;
            margin-bottom: 10px;
            color: #333;
            text-decoration: none;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            transition: background-color 0.3s ease;
        }
        .link:hover {
            background-color: #e9e9e9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>EMPLOYEE SHEET</h1>
        <a href="add" class="link">ADD NEW EMPLOYEES</a>
        <a href="viewEmployee" class="link">VIEW ALL THE EMPLOYEES</a>
        <a href="update" class="link">UPDATE EMPLOYEES</a>
        <a href="searchEmployee" class="link">SEARCH EMPLOYEES</a>
        <a href="deleteEmployee" class="link">DELETE EMPLOYEES</a>
    </div>
</body>
</html>
