<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css" rel="stylesheet">
<style>
.np{font-family: 'Nanum Pen Script', cursive;}
	img { display: block; margin: 0px auto; }
</style>
</head>
<body>
<img src="c.jpg" width="400" height="400" alt="">
<form action="loginProcess.jsp">
<table width="620" height="50" border="0" align="center" cellspacing="1">
<tr>
 <td align="center" colspan="2" style="background:pink"  ><font color=white size="5em"><p class="np">로그인</p></font></td>
</tr>
<tr>
<td>아이디</td>
<td><input type="text" name="id" style="width:250px;"
></td>
</tr>

<tr>
<td>비밀번호</td>
<td><input type="password" name="pw" style="width:250px"></td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" value="로그인">
<input type="button" value="회원가입"​ onclick="location.href='joinForm.jsp'"></td>
</tr>
</table>
</form>
</body>
</html>