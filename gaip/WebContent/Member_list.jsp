<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:catch var="e">
	<sql:query var="rs" dataSource="jdbc/OracleDB">
		select id, name from member
	</sql:query>
	<table border="1" cellspacing="0">
	<tr>
	<td>ID</td>
	<td>Name</td>
	<td>삭제</td>
	</tr>
	<c:forEach var="row" items="${rs.rows}">
		<tr>
			<td><a href ="./Member_into.jsp?id=${row.id}">${row.id}</a></td>
			<td>${row.name}</td>
			<td><a href ="./Member_delete.jsp?id=${row.id}">삭제하기</a></td>
		</tr>
	</c:forEach>
	</table>
</c:catch>
<c:if test="${e != null}">
	err: ${e.message}
</c:if>
</body>
</html>