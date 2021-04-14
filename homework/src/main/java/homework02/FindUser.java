package homework02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FindUser extends HttpServlet{
	
	//doPost() method 오버라이딩
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		
		req.setCharacterEncoding("EUC_KR");
		res.setContentType("text/html;charset=EUC_KR");
		PrintWriter out = res.getWriter();

		
		String name = req.getParameter("name01");
		//String sex = req.getParameter("sex");
		//String birthYear = req.getParameter("year"); 
		//String job = req.getParameter("job");
		//String phoneNumber = req.getParameter("phonenumber"); 
		
		UserVO userVO = new UserVO(name);
		//userVO.setSex(sex);
		//userVO.setBirthYear(birthYear);
		//userVO.setJob(job);
		//userVO.setPhoneNumber(phoneNumber);
		
		UserDao userDao = new UserDao();
		userDao.findUser(userVO);
		
		out.println("<html>");
		out.println("<head><title><li> 내정보보기 </li></title></head>");
		out.println("<body>");
		
		if( userVO.isActive()) {
			out.println("<li>"+userVO.getName()+"님의 정보입니다..</li>");
			out.println("<li> 성별 : "+userVO.getSex()+"</li>");
			out.println("<li> 생년 :"+userVO.getBirthYear()+"년</li>");
			out.println("<li> 직업 :"+userVO.getJob()+"</li>");
			out.println("<li> 연락처 :"+userVO.getPhoneNumber()+"</li>");
			
		}else {
			out.println("회원이 아닙니다.<br/>");
		}
		out.println("</body>");
		out.println("</html>");

	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		
		req.setCharacterEncoding("EUC_KR");
		res.setContentType("text/html;charset=EUC_KR");
		PrintWriter out = res.getWriter();
		
		Cookie[] cookies = req.getCookies();
		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				System.out.println("\nCookie에 저장된 정보 :");
				System.out.println(cookies[i].getName()+" : "+cookies[i].getValue());
				System.out.println("\n");
			}
		}
		
		HttpSession session = req.getSession(false);
		
		if(session != null) {
			
			String name2 = (String)session.getAttribute("sname");
			UserVO userVO = new UserVO(name2);
			UserDao userDao = new UserDao();
			userDao.findUser(userVO);
			
			
			out.println("<html>");
			out.println("<head><title><li> 내정보보기 </li></title></head>");
			out.println("<body>");
			out.println("<li>"+userVO.getName()+"님의 정보입니다..</li>");
			out.println("<li> 성별 : "+userVO.getSex()+"</li>");
			out.println("<li> 생년 :"+userVO.getBirthYear()+"년</li>");
			out.println("<li> 직업 :"+userVO.getJob()+"</li>");
			out.println("<li> 연락처 :"+userVO.getPhoneNumber()+"</li>");
			out.println("</body>");
			out.println("</html>");
			
			
		}
		
	}
	
}//end of class