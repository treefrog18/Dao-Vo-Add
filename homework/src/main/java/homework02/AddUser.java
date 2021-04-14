package homework02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddUser extends HttpServlet{
	
	//doPost() method �������̵�
	protected void service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		
		
		
		
		req.setCharacterEncoding("EUC_KR");
		res.setContentType("text/html;charset=EUC_KR");
		PrintWriter out = res.getWriter();
		
	
		
		String name = req.getParameter("name01");
		String sex = req.getParameter("sex");
		String birthYear = req.getParameter("year"); 
		String job = req.getParameter("job");
		String phoneNumber = req.getParameter("phonenumber"); 
		
		UserVO userVO = new UserVO();
		userVO.setName(name);
		userVO.setSex(sex);
		userVO.setBirthYear(birthYear);
		userVO.setJob(job);
		userVO.setPhoneNumber(phoneNumber);
		
		UserDao userDao = new UserDao();
		userDao.getUser(userVO);
		
		out.println("<html>");
		out.println("<head><title><li> ȸ������ </li></title></head>");
		out.println("<body>");
		
		if( userVO.isActive()) {
			out.println("<li>"+userVO.getName()+"�� ������ ���ϵ帳�ϴ�.</li>");
			out.println("<br/><br/>");
			out.println("<a href='homework02/findUser.html'>����������1</a>");
			out.println("<br/>");
			out.println("<a href='./FindUser'>����������2</a>");
			out.println("</body>");
			out.println("</html>");
		}else {
			out.println("�ٽð����� �ּ���.<br/>");
		}
		
		HttpSession session = req.getSession(true);
		if(session.isNew()) {
			session.setAttribute("sname", new String(userVO.getName()));
		}
		
		if(session.isNew()) {
			out.println("������ ���� ������<br>");
		}

		/*
		out.println("<li> ���� : "+userVO.getSex()+"</li>");
		out.println("<li> ���� :"+userVO.getBirthYear()+"��</li>");
		out.println("<li> ���� :"+userVO.getJob()+"</li>");
		out.println("<li> ����ó :"+userVO.getPhoneNumber()+"</li>");
		out.println("������ �����մϴ�.");
		*/
	}
	
}//end of class