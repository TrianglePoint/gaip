<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:set var="id" value="" scope="session"></c:set>
<sql:query var="rs" dataSource="jdbc/OracleDB"> <!-- content.xml 의 name 값. -->
	select id, pw from member
</sql:query>
<c:forEach var="row" items="${rs.rows}">
  <c:if test="${row.id == param.id && row.pw == param.pw}">
  		<c:set var="id" value="${param.id}" scope="session"></c:set>  
		<c:choose>
     		<c:when test="${param.id == 'admin'}">
     		  	<script>
     		    	alert('관리자로 로그인 하셨습니다.');
     		    	location.href='Member_list.jsp';
     		  	</script>
     		</c:when>
     		<c:otherwise>
     			<script>
     				alert('안뇽');
     				location.href='Main.jsp';
     			</script>
     		</c:otherwise>
     	</c:choose>
  </c:if>
</c:forEach>
<c:if test="${id == ''}">
	<script>
		alert('다시 로그인 해주세요.');
		history.back();
	</script>
</c:if>

</head>
<body>
   <a href=""></a>

</body>
</html>
