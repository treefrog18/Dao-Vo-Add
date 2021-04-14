package homework01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddUser extends HttpServlet{
	
	//doPost() method 오버라이딩
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
		out.println("<head><title><li> 회원가입 </li></title></head>");
		out.println("<body>");
		
		if( userVO.isActive()) {
			out.println("<li> 이름(한글실명) : "+userVO.getName()+"님 가입을 축하드립니다.");
		}else {
			out.println("다시가입해 주세요.<br/>");
		}
		/*
		out.println("<li> 성별 : "+userVO.getSex());
		out.println("<li> 생년 :"+userVO.getBirthYear()+"년");
		out.println("<li> 직업 :"+userVO.getJob());
		out.println("<li> 연락처 :"+userVO.getPhoneNumber());
		out.println("가입을 축하합니다.");
		*/
		out.println("</body>");
		out.println("</html>");

	}
	
}//end of class