<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%@ page import="homework04.UserDao" %>
<%@ page import="homework04.UserVO" %>

<%
	//방어적 코딩 / WorkFlow Control
	//if(request.getMethod().equals("GET")){
		//response.sendRedirect("findUserView.jsp");
		//return;
	//}

	request.setCharacterEncoding("EUC_KR");
	
	String name = request.getParameter("name01");

	
	////////////////////////Session 사용으로 추가된 부분 ///////////////////////////////////////
	//==>id가 null인경우는 ?
	//==><a href='/homework03/FindUser'>내정보보기2(session사용)</a>	
	if(name == null){
		//==>  Session에 저장된 userVO instance 의 id 사용
		name =  ( (UserVO)session.getAttribute("sname")).getName();
		}
	
	UserDao userDao = new UserDao();
	UserVO userVO =userDao.findUser(name);
%>


<html>
<head><title> 내정보보기 </title></head>
<body>
		
	<% if( userVO != null) { %>
		<%= userVO.getName() %> 님의 정보입니다..<br/>
		성별:<%= userVO.getSex() %> <br/>
		생년:<%= userVO.getBirthYear() %> <br/>
		직업:<%= userVO.getJob() %> <br/>
		연락처:<%= userVO.getPhoneNumber() %> <br/>
	<% } else { %>
		회원이 아닙니다.<br/>
	<% } %>
	
	<p><p/><a href='updateUserView.jsp'>내정보수정</a><br/>
	
</body>
</html>
