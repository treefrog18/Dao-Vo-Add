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
<%=name%>���� ������ �������ּ���.<br/><br/>
*����<input type="radio" name="sex" value="male" />��
	<input type="radio" name="sex" value="female" />��<br/><br/>

*�������<input type="number" name="year" value="birthyear" style="width:40px;height:20px"/>��<br/><br/>

*����
	<select name="job">
	  	<optgroup label="�����ϼ���">
			<option value="ȸ���">ȸ���</option>
			<option value="������">������</option>
			<option value="�ڿ���">�ڿ���</option>
			<option value="��������">��������</option>
			<option value="����">����</option>
		</optgroup>
  </select><br/><br/>
  
*�޴���&nbsp;<input type="number" name="phonenumber"/>	
<input type='submit' value='����' />
	</form>
</body>
</html>