<%@page import="customer.DAO.customerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리 결과</title>
</head>
<body>
	<jsp:useBean id="cvo" class="customer.VO.customerVO"/>
	<jsp:setProperty property="*" name="cvo"/>
	
	<%	
		
		String password1=request.getParameter("password1");
	
		if(cvo.getPassword().equals(password1)){
		String hobbyAll="";
		String[] hobby=request.getParameterValues("hobby");
		for(int i=0; i<hobby.length;i++){
			hobbyAll += hobby[i]+" ";
		}
		cvo.setHobby(hobbyAll);
		
		customerDAO cdao = new customerDAO();
		cdao.insert(cvo);
		response.sendRedirect("List.jsp");
		}else{
	%>
	<script type="text/javascript">
	alert("비밀번호가 같지 않습니다 제대로 입력해주세요");
	history.go(-1);
	</script>
	<%} %>
</body>
</html>