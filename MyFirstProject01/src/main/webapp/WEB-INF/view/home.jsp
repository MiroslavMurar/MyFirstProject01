<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
	<title>Company Home Page</title>
</head>
<body>
	<h2>
		 Company Home page
	</h2>
	<hr>
	Welcome to the company home page
	</p>
	
	<hr> 
		<p> 
			User: <security:authentication property="principal.username" /> 
			<br><br>
			Role(s): <security:authentication property="principal.authorities" /> 
		</p>
	</hr> 
	
	<hr> 
		<security:authorize access="hasRole('MANAGER')">
		<p>
			<a href="${pageContext.request.contextPath}/leaders">LeaderShipMeeting</a>	
			(Only for a manager)
	 	 
		</p>
		</security:authorize>
	<hr> 
	
	<hr> 
		<security:authorize access="hasRole('ADMIN')">
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems 					Meeting</a>	
			(Only for a Admin peeps)
	
		</p>
		</security:authorize>
	<hr> 
		
	<form:form 	action="${pageContext.request.contextPath}/logout" 
				method="POST">
		<input type="submit" value="Logout" /> 
	</form:form> 
</body>	
</html>