<!DOCTYPE html> 

<html>


<head> 
	<title>Welcome Page</title>
</head>


<body>

	Welcome at my First Project 
	<br><br>
	${pageContext.request.contextPath}/admin/customers : "${pageContext.request.contextPath}/admin/customers"
	<br><br>
	<a href="${pageContext.request.contextPath}/admin/customers">XXX</a>
	<br><br>
	${pageContext.request.contextPath}/student/showForm : "${pageContext.request.contextPath}/student/showForm"
	<br><br> 
	<a href="${pageContext.request.contextPath}/student/showForm">Registration Student</a>
</body>


</html>