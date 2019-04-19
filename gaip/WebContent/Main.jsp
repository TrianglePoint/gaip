<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.np{font-family: 'Nanum Pen Script', cursive;}
	img { display: block; margin: 0px auto; }
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center"><h1><%=session.getAttribute("id") %>님 안녕하세요!!!!<h1></h1></div>
<img src="abo.gif" width="400" height="400" alt="">

<div align="center"><input type="button" value="로그아웃"​ onclick="location.href='loginForm.jsp'" />


</body>
</html>