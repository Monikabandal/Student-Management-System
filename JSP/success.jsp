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
*{
text-align: center;}
body {
	font-family: Arial, sans-serif;
	background-color: #0a0a0a;
	margin: 0;
	padding: 20px;
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
	text-align: center;
}
td{
  color: white;
}

th {
	background-color: #3d3e3e;
	color: white;
}

tr:nth-child(even) {
	background-color: #0a0a0a;
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
h1{
  color: white;
}
</style>
</head>
<body>
	<h1>Student List</h1>
	<form>
		<table>
			<tr>
				<th>Select</th>
				<th>Name</th>
				<th>E-Mail</th>
				<th>Username</th>
				<th>Password</th>
				<th colspan="2">Action</th>
			</tr>

			
			<c:forEach items="${stu}" var="s">
				<tr>
					<td><input type="radio" name="name" value="${s.name}"></td>
					<td>${s.name}</td>
					<td>${s.email}</td>
					<td>${s.username}</td>
					<td>${s.password}</td>
					<td>
						<input type="hidden"
						name="username" value="${s.username}">
						<button type="submit" formaction="/edit">EDIT</button>

					</td>
					<td>
						<input type="hidden"
						name="username" value="${s.username}">
						<button type="submit" class="delete" formaction="/delete">DELETE</button>

					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<form action="back">
	<center>
	<button style="background-color:rgb(56, 55, 55)">BACK</button>
	</center>
	</form>
</body>
</html>
