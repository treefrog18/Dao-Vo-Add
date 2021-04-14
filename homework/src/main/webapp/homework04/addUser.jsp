<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="homework04.UserDao" %>
<%@ page import="homework04.UserVO" %>


<%
	//방어적 코딩 / WorkFlow Control
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
	<%= userVO.getName() %>님 가입을 축하드립니다. <br/><br/>
	<% session.setAttribute("sname", userVO); %>
	<%}else{ %>
	회원가입 실패, 다시 가입해 주세요.
<% } %>

	<p><p/><a href='findUserView.jsp'>내정보보기1</a><br/>
	<p><p/><a href='findUser.jsp'>내정보보기2</a><br/>

</body>	
</html>

