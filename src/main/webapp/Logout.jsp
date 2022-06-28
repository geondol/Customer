<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 처리</title>
</head>
<body>
<%
	String logout = request.getParameter("logout");
	
	if(logout !=null){
		session.setAttribute("id", null);
		session.setMaxInactiveInterval(0);
		session.invalidate();
	}
	
	response.sendRedirect("List.jsp");
%>
</body>
</html>