<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%@ page import="homework04.UserDao" %>
<%@ page import="homework04.UserVO" %>

<%
	//����� �ڵ� / WorkFlow Control
	//if(request.getMethod().equals("GET")){
		//response.sendRedirect("findUserView.jsp");
		//return;
	//}

	request.setCharacterEncoding("EUC_KR");
	
	String name = request.getParameter("name01");

	
	////////////////////////Session ������� �߰��� �κ� ///////////////////////////////////////
	//==>id�� null�ΰ��� ?
	//==><a href='/homework03/FindUser'>����������2(session���)</a>	
	if(name == null){
		//==>  Session�� ����� userVO instance �� id ���
		name =  ( (UserVO)session.getAttribute("sname")).getName();
		}
	
	UserDao userDao = new UserDao();
	UserVO userVO =userDao.findUser(name);
%>


<html>
<head><title> ���������� </title></head>
<body>
		
	<% if( userVO != null) { %>
		<%= userVO.getName() %> ���� �����Դϴ�..<br/>
		����:<%= userVO.getSex() %> <br/>
		����:<%= userVO.getBirthYear() %> <br/>
		����:<%= userVO.getJob() %> <br/>
		����ó:<%= userVO.getPhoneNumber() %> <br/>
	<% } else { %>
		ȸ���� �ƴմϴ�.<br/>
	<% } %>
	
	<p><p/><a href='updateUserView.jsp'>����������</a><br/>
	
</body>
</html>
