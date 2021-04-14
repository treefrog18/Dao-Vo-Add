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
	<%= userVO.getName() %>님 정보 수정이 완료되었읍니다.. <br/><br/>
	<% session.setAttribute("sname", userVO); %>
	<%}else{ %>
	수정이 안되었어요.
<% } %>

	
	<p><p/><a href='findUser.jsp'>내정보보기</a><br/>

</body>	
</html>

