<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success Page</title>
</head>
<body>
<h1>Name: ${student.name}</h1>
<h1>Id: ${student.id}</h1>
<h1>Date Of Birth: ${student.dob}</h1>
<h1>Course: ${student.course}</h1>
<h1>Gender: ${student.gender}</h1>
<h1>Type: ${student.type}</h1>
<h1>Street: ${student.address.street}</h1>
<h1>City: ${student.address.city}</h1>
</body>
</html>