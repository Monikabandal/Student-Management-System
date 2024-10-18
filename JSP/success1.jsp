<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Management</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #090909;
	margin: 0;
	padding: 20px;
}
h1{
	color: white;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 12px;
	text-align: left;
	color: white;
}

th {
	background-color: #4b4c4e;
	color: white;
}

tr:nth-child(even) {
	background-color: #242323;
}

input[type="radio"] {
	transform: scale(1.2);
}

button {
	background-color: #28a745;
	color: white;
	border: none;
	padding: 8px 16px;
	cursor: pointer;
	border-radius: 4px;
}

button:hover {
	background-color: #218838;
}

button.delete {
	background-color: #dc3545;
}

button.delete:hover {
	background-color: #c82333;
}
td,th{
text-align: center;
}
</style>
</head>
<body>
<c:forEach items="${stu}" var="s">
<center>
	<h1>${s.name}</h1>
	</centre>
	</c:forEach>
	<form>
		<table>
			<tr>
			
				<th>Name</th>
				<th>E-Mail</th>
				<th>Username</th>
				<th>Password</th>
			</tr>

			
			<c:forEach items="${stu}" var="s">
				<tr>
					<td>${s.name}</td>
					<td>${s.email}</td>
					<td>${s.username}</td>
					<td>${s.password}</td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<form action="back">
	<center>
	<button style="background-color:rgb(38, 37, 37)">BACK</button>
	</center>
	</form>
</body>
</html>
