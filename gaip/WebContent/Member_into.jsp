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
		select * from member where id=?
		<sql:param value="${param.id}" />
</sql:query>
</c:catch>
<c:if test="${e != null}">
	err: ${e.message}
</c:if>
<c:forEach var="row" items="${rs.rows}">
	<c:set var="data" value="${row}" />
</c:forEach>

<table width="700" height="400" border="2"  align="center" cellspacing="0">

       <tr height="10" align="center">

           <td colspan="2" style="background:pink;" ><font color=white font size="4"><b>ȸ���⺻����</b></font></td>

       </tr>

       <tr>

           <td><b>���̵�:</b></td>

           <td>${data.id}</td>

       </tr>

       <tr>

           <td><b>���:</b></td>

           <td>${data.pw}</td>

       </tr>

       <tr>

           <td><b>�����ּ�:</b></td>

           <td>${data.email}</td>

       </tr>

       <tr>

           <td><b>�̸�:</b></td>

           <td>${data.name}</td>

       </tr>

       <tr  height="10" align="center">

           <td colspan="2" style="background:pink;"><font color=white font size="4"><b>��������</b></font></td>

       </tr>

       <tr>

           <td><b>�ֹε�Ϲ�ȣ:</td>

           <td>${data.num1}</td>

       </tr>

       <tr>

           <td><b>����:</b></td>

           <td>
           		${data.years}��
           		${data.month}��
           		${data.day}��
           </td>

       </tr>

       <tr>

           <td><b>���ɺо�:</b></td>

           <td>
				${data.inter}
           </td>

       </tr>

       <tr>

           <td>

               <b>�ڱ�Ұ�:</b>

           </td>
<td>
           ${data.self}
</td>
       </tr>

   </table>
  

</body>
</html>