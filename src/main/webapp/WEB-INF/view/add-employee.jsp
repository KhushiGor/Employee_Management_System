<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add-Employee</title>
</head>
<body>
 <form action="/addEmployee" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name"><br><br>

        <label for="department">Department:</label>
        <input type="text" id="department" name="department"><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email"><br><br>

        <label for="salary">Salary:</label>
        <input type="number" id="salary" name="salary"><br><br>

        <input type="submit" value="Add Employee">
    </form>
</body>
</html>