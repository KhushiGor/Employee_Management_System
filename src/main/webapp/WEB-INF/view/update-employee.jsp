<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update-Employee</title>
</head>
<body>
 <form action="/updateEmployee" method="post">
        <input type="hidden" name="id" value="${employee.id}">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${employee.name}"><br><br>

        <input type="submit" value="Update Employee">
    </form>
</body>
</html>