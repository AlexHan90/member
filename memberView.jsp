<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="member.MemberDAO"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>memberView.jsp<br>
<%-- <jsp:include page="../default/header.jsp"/> --%>
<%
   Connection conn = MemberDAO.getConnection();
   String sql = "select * from members";
   PreparedStatement ps = conn.prepareStatement(sql);
   ResultSet rs = ps.executeQuery();
   
   out.print("<table border='1'>");
   out.print("<tr>");
   out.print("<th>아이디</th> <th>비번</th> <th>이름</th> <th>주소</th> <th>전화번호</th>");
   out.print("</tr>");
   while(rs.next()){
      out.print("<tr>");
     /*  out.print("<td><a href='info.jsp?id="+rs.getString("id")+"'>"
      +rs.getString("id")+"</a></td>"); */
   %>
   <td>
   
  <a href="info.jsp?id=<%=rs.getString("id") %>">
  	<%=rs.getString("id") %>
  
  </a>
  </td>
   <td><%= rs.getString("pwd") %></td>
   <td><%= rs.getString("name") %></td>
   <td><%= rs.getString("addr") %></td>
   <td><%= rs.getString("tel") %></td>
   </tr>
<%}%>
</body>
</html>