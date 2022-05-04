<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.reflect.Member"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
id: <%= request.getParameter("id") %>
	<%
	Connection con= MemberDAO.getConnection();
	String sql= "select * from members where id=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, request.getParameter("id"));
	ResultSet rs = ps.executeQuery();
	if(rs.next()) {%>
		id : <%= rs.getString("id") %><br>
		name : <%= rs.getString("name") %><br>
		add : <%= rs.getString("addr") %><br>
	<% }%>
	
</body>
</html>