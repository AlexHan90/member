<%@page import="member.MemberDTO"%>
<%@page import="java.lang.reflect.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>loginChk2.jsp 입니다.<br>
<jsp:useBean id="dto1" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="dto1"/>

<%-- <jsp:setProperty property="id" name="dto1"/>
<jsp:setProperty property="pwd" name="dto1"/>
<jsp:setProperty property="name" name="dto1"/ --%>>

dto1.id: <%= dto1.getId() %> <br>
dto1.pwd: <%= dto1.getPwd() %> <br>
dto1.name: <%= dto1.getName() %> <br>

<%
MemberDTO dto = new MemberDTO();
dto.setId(request.getParameter("id"));
dto.setPwd(request.getParameter("pwd"));
dto.setName(request.getParameter("name"));

%>

</body>
</html>