<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="hello" method="get">
		<input type="text" name="name">
		<button type="submit">GET</button>
	</form>
	<form action="hello" method="post">
		<input type="text" name="name">
		<button type="submit">POST</button>
	</form>
</body>
</html>