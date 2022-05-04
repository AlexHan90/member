<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>login.jsp<br>

<form action="loginChk.jsp" method="post">
	<input type="text" name="id" placeholder="아이디"><br>
	<input type="text" name="pwd" placeholder="비밀번호"><br>
	<input type="submit" value="로그인"><br>
	
</form>

<h3>loginChk2 이동</h3>
<form action="loginChk2.jsp" method="post">
	<input type="text" name="id" placeholder="아이디"><br>
	<input type="text" name="pwd" placeholder="비밀번호"><br>
	<input type="text" name="name"><br>
	<input type="submit" value="로그인"><br>
	

</form>
<% 
MemberDAO.getConnection();
%>

</body>
</html>