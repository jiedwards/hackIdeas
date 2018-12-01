<%@page import="models.Contact"%>
<%@page import="java.util.ArrayList"%>

<html>
<head>

	<meta charset="UTF-8">
	<title>Insert title here</title>
	<meta <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>>
</head>
<body>
	<h1>All contacts</h1>
	<table>
		<tr>
			<th> Name</th>
			<th> Email</th>
			</tr>
			<c:forEach items="${allCons}" var="c">
			<tr>
				<td>${c.getName()}</td>
				<td>${c.getEmail()}</td>
				</tr>
				</c:forEach>
			
			</table>
			<br>
			<a href="./addnew">+ New Contact</a
			>
</body>
</html>