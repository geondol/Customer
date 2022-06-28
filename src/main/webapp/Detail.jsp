<%@page import="customer.VO.customerVO"%>
<%@page import="customer.DAO.customerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록 상세보기</title>
<style type="text/css">
td{
padding: 15px;
font-size: 20px;
font-weight: bolder;
}
body {
	background-image: url('images/IMG_4203.jpeg');
	background-size: 100%;
	margin-top: 100px;
}
</style>
</head>
<body align="center">
<%	
	String id = request.getParameter("id");
	customerDAO cdao = new customerDAO();
	customerVO cvo = cdao.selectOne(id);
%>
	
	<table border="1" align="center">
	
		<tr>
			<td colspan="2" style="background-color: white;"><h1>회원목록 상세보기</h1></td>
		</tr>
		<tr>
			<td style="background-color: aqua;">아이디</td>
			<td style="background-color: white;"><%=cvo.getId() %></td>
		</tr>
		<tr>
			<td style="background-color: aqua;">이메일</td>
			<td style="background-color: white;"><%=cvo.getEmail() %></td>
		</tr>
		<tr>
			<td style="background-color: aqua;">전화번호</td>
			<td style="background-color: white;"><%=cvo.getTel() %></td>
		</tr>
		<tr>
			<td style="background-color: aqua;">취미</td>
			<td style="background-color: white;"><%=cvo.getHobby() %></td>
		</tr>
		<tr>
			<td style="background-color: aqua;">직업</td>
			<td style="background-color: white;"><%=cvo.getJob() %></td>
		</tr>
		<tr>
			<td style="background-color: aqua;">연령</td>
			<td style="background-color: white;"><%=cvo.getAge() %></td>
		</tr>
		<tr>
			<td style="background-color: aqua;">하고싶은말</td>
			<td style="background-color: white;"><%=cvo.getContent() %></td>
		</tr>
		<tr>
			<td colspan="2" style="background-color: white;">
				<input style="font-size: 20px" type="button" value="수정하기" onclick="location.href='Update.jsp?id=<%=cvo.getId()%>'">
				<input style="font-size: 20px" type="button" value="회원탈퇴" onclick="location.href='Delete.jsp?id=<%=cvo.getId()%>'">
				<input style="font-size: 20px" type="button" value="전체목록보기" onclick="location.href='List.jsp'">
				<input style="font-size: 20px" type="button" value="회원가입" onclick="location.href='Insert.jsp'">
			</td>
		</tr>
	</table>
	
</body>
</html>