<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<style type="text/css">
td{
padding: 15px;
font-size: 20px;
font-weight: bolder;
}
body {
	background-image: url('images/IMG_4203.jpeg');
	background-size: 100%;
}
</style>
</head>
<body align="center">
	
	<form action="InsertPro.jsp">
		<table border="1" align="center" style="margin-top: 30px">
			<tr>
				<td colspan="2" style="background-color: white;"><h1>회원가입</h1></td>
			</tr>
			<tr>
				<td style="background-color: aqua;">아이디</td>
				<td style="background-color: white;"><input type="text" name="id" size="50" placeholder="ID를 입력하세요" required="required"></td>
			</tr>
			<tr>
				<td style="background-color: aqua;">비밀번호</td>
				<td style="background-color: white;"><input type="password" name="password" size="50" placeholder="비밀번호를 입력하세요" required="required"></td>
			</tr>
			<tr>
				<td style="background-color: aqua;">비밀번호 확인</td>
				<td style="background-color: white;"><input type="password" name="password1" size="50" placeholder="비밀번호를 입력하세요" required="required"></td>
			</tr>
			<tr>
				<td style="background-color: aqua;">이메일</td>
				<td style="background-color: white;"><input type="email" name="email" size="50" placeholder="이메일 형식으로 입력하세요" required="required"></td>
			</tr>
			<tr>
				<td style="background-color: aqua;">전화번호</td>
				<td style="background-color: white;"><input type="tel" name="tel" size="50" placeholder="010-0000-0000형식으로 입력하세요" required="required"></td>
			</tr>
			<tr>
				<td style="background-color: aqua;">취미</td>
				<td style="background-color: white;">
					<input type="checkbox" name="hobby" value="게임">게임
					<input type="checkbox" name="hobby" value="서핑">서핑
					<input type="checkbox" name="hobby" value="스노우보드">스노우보드
					<input type="checkbox" name="hobby" value="캠핑">캠핑
					<input type="checkbox" name="hobby" value="여행">여행
				</td>
			</tr>
			<tr>
				<td style="background-color: aqua;">직업</td>
				<td style="background-color: white;">
					<select name="job">
						<option value="학생">학생</option>
						<option value="회사원">회사원</option>
						<option value="배달원">배달원</option>
						<option value="알바생">알바생</option>
						<option value="유투버">유투버</option>
					</select>
				</td>
			</tr>
			<tr>
				<td style="background-color: aqua;">연령대</td>
				<td style="background-color: white;">
					<input type="radio" name="age" value="10대">10대
					<input type="radio" name="age" value="20대">20대
					<input type="radio" name="age" value="30대">30대
					<input type="radio" name="age" value="40대">40대
					<input type="radio" name="age" value="50대">50대
					<input type="radio" name="age" value="60대">60대
					<input type="radio" name="age" value="70대">70대
					<input type="radio" name="age" value="70대">80대
					<input type="radio" name="age" value="70대">90대이상
				</td>
			</tr>
			<tr>
				<td style="background-color: aqua;">하고싶은말</td>
				<td style="background-color: white;"><textarea cols="60" rows="10" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" style="background-color: white;">
					<input style="font-size: 20px" type="button" value="목록보기" onclick="location.href='List.jsp'">
					<input style="font-size: 20px" type="submit" value="회원가입">
					<input style="font-size: 20px" type="reset" value="취소">
				</td>
				
			</tr>
		</table>
	</form>
</body>
</html>