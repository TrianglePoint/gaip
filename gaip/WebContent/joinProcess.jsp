<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    

	    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:catch var="e">
	<sql:query var="rs" dataSource="jdbc/OracleDB">
    	select id from member
    </sql:query>
	<c:forEach var="row" items="${rs.rows}">
		<c:if test="${row.id == param.id}">
		    <c:set var="run" value="no" />
	    	<script>
	    		alert('아이디가 중복됩니다.');
	    		history.back(); 
	    	</script>
    	</c:if>
	</c:forEach>
	<c:if test="${run != 'no'}">
	    <sql:update var="rs" dataSource="jdbc/OracleDB">
			insert into member values (?,?,?,?,?,?,?,?,?,?)
			<sql:param value="${param.id}" />
			<sql:param value="${param.pw}" />
			<sql:param value="${param.email}" />
			<sql:param value="${param.name}" />
			<sql:param value="${param.num1}" />
			<sql:param value="${param.years}" />
			<sql:param value="${param.month}" />
			<sql:param value="${param.day}" />
			<c:set var="inte" value=""></c:set>
			<c:forEach var="i" items="${paramValues.inter}" varStatus="index">
			    <c:choose>
			    	<c:when test="${index.last}">
						<c:set var="inte" value="${inte.concat(i)}"></c:set>
			    	</c:when>
			    	<c:otherwise>
			    		<c:set var="inte" value="${inte.concat(i.concat(','))}"></c:set>
			    	</c:otherwise>
				</c:choose>
			</c:forEach>
			<sql:param value="${inte}" />
			<sql:param value="${param.self}" />
		</sql:update>
		<script>
			alert('가입이 완료되었습니다.');
			location.href = 'loginForm.jsp';
		</script>	
	</c:if>
</c:catch>
<c:if test="${run != 'no' && e != null}">
	${e.message}
</c:if>

</head>
<body>
</body>
</html>