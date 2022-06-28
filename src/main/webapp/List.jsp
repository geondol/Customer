<%@page import="customer.VO.customerVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="customer.DAO.customerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 전체 조회</title>
<style type="text/css">
td{
padding: 15px;
font-size: 20px;
font-weight: bolder;
}
body {
	background-image: url('images/IMG_4203.jpeg');
	background-size: 100%;
	margin-top: 60px;
}
</style>
</head>
<body align="center">
<%
	String id = (String)session.getAttribute("id");
	if(id==null){
		id="guest";
	}

	if(id.equals("guest")){
%>
	
	<h1><%=id %>님 환영합니다</h1>
	<input style="font-size: 20px" type="button" value="회원가입" onclick="location.href='Insert.jsp'">
	<input style="font-size: 20px" type="button" value="로그인" onclick="location.href='Login.jsp'">
	<%}else{ %>
	
	<h1><%=id %>님 환영합니다</h1>
	<input style="font-size: 20px" type="button" value="로그아웃" onclick="location.href='Logout.jsp?logout=1'">
	<%} %>
	
	<br><br>
	<table border="1" align="center">
		<tr>
		 	<td colspan="7" style="background-color: white;"><h1>회원목록 전체보기</h1></td>
		</tr>
		<tr>
			<td style="background-color: aqua;">아이디</td>
			<td style="background-color: aqua;">전자우편</td>
			<td style="background-color: aqua;">전화번호</td>
			<td style="background-color: aqua;">관심분야</td>
			<td style="background-color: aqua;">직업</td>
			<td style="background-color: aqua;">연령대</td>
			<td style="background-color: aqua;">하고 싶은 말</td>
		</tr>
		<%
			customerDAO cdao = new customerDAO();
			ArrayList<customerVO> arr = cdao.selectAll();
			for(int i=0; i<arr.size();i++){
				customerVO cvo = arr.get(i);
		%>
		<tr>
			<td style="background-color: white;"><a href="Detail.jsp?id=<%=cvo.getId()%>"><%=cvo.getId() %></a></td>
			<td style="background-color: white;"><%=cvo.getEmail() %></td>
			<td style="background-color: white;"><%=cvo.getTel() %></td>
			<td style="background-color: white;"><%=cvo.getHobby() %></td>
			<td style="background-color: white;"><%=cvo.getJob() %></td>
			<td style="background-color: white;"> <%=cvo.getAge() %></td>
			<td style="background-color: white;"><%=cvo.getContent() %></td>
		</tr>
		<%
		}
		%>
	</table>
	<br>
	
	
</body>
</html>