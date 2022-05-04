<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> loginChk 페이지입니다.<br>
<jsp:useBean id="dto" class="member.MemberDTO"/> 
<!-- dto =객체 member=패키지 MemberDTO=클래스 -->
<%
 String id = request.getParameter("id");
 String pwd = request.getParameter("pwd");
 dto.setId(id);
 dto.setPwd(pwd);

%>

id: <%=dto.getId() %><br>
pwd: <%=dto.getPwd() %><br>

</body>
</html>