<%@page import="customer.DAO.customerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴 처리 페이지</title>
</head>
<body>
	<jsp:useBean id="cvo" class="customer.VO.customerVO"/>
	<jsp:setProperty property="*" name="cvo"/>
	<%
	customerDAO cdao = new customerDAO();
	
	String DBpassword=cdao.getDBpassword(cvo);
	
	if(cvo.getPassword().equals(DBpassword)){
		cdao.delete(cvo);
		response.sendRedirect("List.jsp");
	}else{
	%>
	<script type="text/javascript">
		alert("비밀번호가 틀렸습니다");
		history.go(-1);
	</script>
	<%} %>
</body>
</html>