<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String sql = "delete member where id=?";
Connection conn= null;
ResultSet rs   = null;
PreparedStatement pstmt =null;
try { 
	Context init = new InitialContext();
    DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
    conn = ds.getConnection();
    pstmt= conn.prepareStatement(sql);
    pstmt.setString(1, request.getParameter("id"));
    rs = pstmt.executeQuery();
   	rs.next();
    %>삭제완료되었습니다<% 
}catch(SQLException e){
	out.println("err:"+e.toString());
	
}finally{
	   conn.close();
}
    %>
    <a href="Member_list.jsp">돌아가기</a>
</body>
</html>