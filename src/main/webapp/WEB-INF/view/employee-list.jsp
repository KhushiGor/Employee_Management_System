<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Employee List</title>
</head>
<body>
<h1>Employee List</h1>

<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Actions</th>
</tr>

<c:forEach var="employee" items="${employees}">

<tr>
<td>${employee.id}</td>
<td>${employee.name}</td>
<td>${employee.email}</td>
<td><a href="/employees/edit/${employee.id}">Edit</a> <a href="/employees/delete/${employee.id}">Delete</a></td>
</tr>

</c:forEach>

</table>
<a href="/employees/add">Add Employee</a>
</body>

</html>