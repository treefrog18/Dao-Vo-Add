<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%@ page import="homework04.UserDao" %>
<%@ page import="homework04.UserVO" %>


<%
	request.setCharacterEncoding("EUC_KR");

	String name = ( (UserVO)session.getAttribute("sname")).getName();
%>
	

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <form method="Post" action='updateUser.jsp'>
<%=name%>님의 정보를 수정해주세요.<br/><br/>
*성별<input type="radio" name="sex" value="male" />남
	<input type="radio" name="sex" value="female" />여<br/><br/>

*생년월일<input type="number" name="year" value="birthyear" style="width:40px;height:20px"/>년<br/><br/>

*직업
	<select name="job">
	  	<optgroup label="선택하세요">
			<option value="회사원">회사원</option>
			<option value="예술가">예술가</option>
			<option value="자영업">자영업</option>
			<option value="프리랜서">프리랜서</option>
			<option value="무직">무직</option>
		</optgroup>
  </select><br/><br/>
  
*휴대폰&nbsp;<input type="number" name="phonenumber"/>	
<input type='submit' value='수정' />
	</form>
</body>
</html>