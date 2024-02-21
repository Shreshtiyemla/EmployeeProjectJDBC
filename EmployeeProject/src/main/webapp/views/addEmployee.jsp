<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee Form</title>
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
    <form action="/addedEmployee">
        <label for="empId">ID:</label>
        <input type="text" id="empId" name="empId" required><br>
        <label for="empFirstName">First Name:</label>
        <input type="text" id="empFirstName" name="empFirstName" required><br>
        <label for="empLastName">Last Name:</label>
        <input type="text" id="empLastName" name="empLastName" required><br>
        <label for="role">Role:</label>
        <input type="text" id="role" name="role" required><br>
        <button type="submit">SUBMIT</button>
    </form>
</body>
</html>


