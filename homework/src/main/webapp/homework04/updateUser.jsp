<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="homework04.UserDao" %>
<%@ page import="homework04.UserVO" %>


<%
	
	
	request.setCharacterEncoding("EUC_KR");

	String name = ( (UserVO)session.getAttribute("sname")).getName();
	String sex = request.getParameter("sex");
	String birthYear = request.getParameter("year"); 
	String job = request.getParameter("job");
	String phoneNumber = request.getParameter("phonenumber"); 
	
	UserVO userVO = new UserVO();
	userVO.setName(name);
	userVO.setSex(sex);
	userVO.setBirthYear(birthYear);
	userVO.setJob(job);
	userVO.setPhoneNumber(phoneNumber);
	
	UserDao userDao = new UserDao();
	userDao.updateUser(userVO);
%>



<html>
<head></head>
<body>
<% if( userVO.isActive()) { %>
	<%= userVO.getName() %>�� ���� ������ �Ϸ�Ǿ����ϴ�.. <br/><br/>
	<% session.setAttribute("sname", userVO); %>
	<%}else{ %>
	������ �ȵǾ����.
<% } %>

	
	<p><p/><a href='findUser.jsp'>����������</a><br/>

</body>	
</html>

