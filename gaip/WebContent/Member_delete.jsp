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
	<sql:update var="rs" dataSource="jdbc/OracleDB">
			delete member where id=?
			<sql:param value="${param.id}" />
	</sql:update>
	삭제완료되었습니다
</c:catch>
<c:if test="${e != null}">
	err: ${e.message}
</c:if>
<a href="Member_list.jsp">돌아가기</a>
</body>
</html>