<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<title>Employee Form</title>
</head>
<body>
<form:form modelAttribute="employee" method="post">
<div>
<form:label path="name">Name: </form:label>
<form:input path="name" />
<form:errors path="name" />
</div>
<div>
<form:label path="email">Email: </form:label>
<form:input path="email" />
<form:errors path="email" />
</div>
<button type="submit">Submit</button>
</form:form>
</body>
</html>