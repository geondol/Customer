<%@page import="customer.VO.customerVO"%>
<%@page import="customer.DAO.customerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제 페이지</title>
<style type="text/css">
td{
padding: 15px;
font-size: 20px;
font-weight: bolder;
}
body {
	background-image: url('images/IMG_4203.jpeg');
	background-size: 100%;
	margin-top: 150px;
}
</style>
</head>
<body align="center">
<%	
	String id = request.getParameter("id");
	customerDAO cdao = new customerDAO();
	customerVO cvo = cdao.selectOne(id);
%>
	
	<form action="DeletePro.jsp">
	<table border="1" align="center">
		<tr>
			<td colspan="2" style="background-color: white;"><h1>회원정보 삭제</h1></td>
		</tr>
		<tr>
			<td style="background-color: aqua;">아이디</td>
			<td style="background-color: white;"><%=cvo.getId() %></td>
		</tr>
		<tr>
			<td style="background-color: aqua;">비밀번호</td>
			<td style="background-color: white;"><input type="password" name="password" required="required"></td>
		</tr>
		<tr>
			<td colspan="2" style="background-color: white;">
				<input style="font-size: 20px" type="hidden" name="id" value="<%=id%>">
				<input style="font-size: 20px" type="submit" value="회원탈퇴" >
				<input style="font-size: 20px" type="reset" value="취소">
		
			</td>
		</tr>
	</table>
	</form>
	
</body>
</html>