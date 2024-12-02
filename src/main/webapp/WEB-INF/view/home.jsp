<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
 <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Email</th>
            <th>Salary</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="employee" items="${employees}">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.department}</td>
                <td>${employee.email}</td>
                <td>${employee.salary}</td>
                <td>
                    <a href="/updateEmployee/${employee.id}">Edit</a> | 
                    <a href="/deleteEmployee/${employee.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="/addEmployee">Add New Employee</a>
</body>
</html>