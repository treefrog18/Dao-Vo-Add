package homework01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddUser extends HttpServlet{
	
	//doPost() method �������̵�
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		
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
			out.println("<li> �̸�(�ѱ۽Ǹ�) : "+userVO.getName()+"�� ������ ���ϵ帳�ϴ�.");
		}else {
			out.println("�ٽð����� �ּ���.<br/>");
		}
		/*
		out.println("<li> ���� : "+userVO.getSex());
		out.println("<li> ���� :"+userVO.getBirthYear()+"��");
		out.println("<li> ���� :"+userVO.getJob());
		out.println("<li> ����ó :"+userVO.getPhoneNumber());
		out.println("������ �����մϴ�.");
		*/
		out.println("</body>");
		out.println("</html>");

	}
	
}//end of class