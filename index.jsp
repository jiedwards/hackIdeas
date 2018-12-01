<%@page import="models.Ideas"%>
<%@page import="models.IdeasDAO"%>
<%@page import="java.util.ArrayList"%>

<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-
BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-
wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/site.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<meta <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>>
</head>
<body>

<div id="Container">

	<h1>All Ideas </h1>
	<a href="./addnew">Add a New Idea</a>

<div id="content">	
	<table class="table-table-hover">
		<tr class="active"> 
			<th>Difficulty</th>
			<th>Type</th>
			<th>Ideas</th>

		</tr>
		<c:forEach items="${allIdeas}" var="c">
			<tr>
				<td>${c.getDifficulty()}</td>
				<td>${c.getType()}</td>
				<td>${c.getIdeas()}</td>
			</tr>
		</c:forEach>

	</table>
	<br>
 </div>
</div>	

<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
-->
</body>
</html>