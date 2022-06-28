<%@page import="customer.DAO.customerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리 페이지</title>
</head>
<body>

	<jsp:useBean id="cvo" class="customer.VO.customerVO"/>
	<jsp:setProperty property="*" name="cvo"/>
	<%
		customerDAO cdao = new customerDAO();
		String DBid= cdao.getDBId(cvo);
		String DBpassword = cdao.getDBpassword(cvo);
		
		if(cvo.getId().equals(DBid) && cvo.getPassword().equals(DBpassword)){
			session.setAttribute("id", cvo.getId());
			session.setAttribute("password", cvo.getPassword());
			session.setMaxInactiveInterval(60*60*24*365);
			
			response.sendRedirect("List.jsp");
		}else{
	%>
	<script type="text/javascript">
		alert("아이디와 비밀번호를 확인해주세요");
		history.go(-1);
	</script>
	<%} %>
</body>
</html>