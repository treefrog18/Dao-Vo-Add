<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="homework04.UserDao" %>
<%@ page import="homework04.UserVO" %>


<%
	//����� �ڵ� / WorkFlow Control
	if(request.getMethod().equals("GET")){
		response.sendRedirect("addUserView.jsp");
		return;
	}
	
	request.setCharacterEncoding("EUC_KR");

	String name = request.getParameter("name01");
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
	userDao.getUser(userVO);
%>



<html>
<head></head>
<body>
<% if( userVO.isActive()) { %>
	<%= userVO.getName() %>�� ������ ���ϵ帳�ϴ�. <br/><br/>
	<% session.setAttribute("sname", userVO); %>
	<%}else{ %>
	ȸ������ ����, �ٽ� ������ �ּ���.
<% } %>

	<p><p/><a href='findUserView.jsp'>����������1</a><br/>
	<p><p/><a href='findUser.jsp'>����������2</a><br/>

</body>	
</html>

