package homework04;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.sql.DataSource;

//@WebServlet("/Login")
public class UserDao {
	
	
	public UserDao() {
		
	}
	
	public void getUser(UserVO userVO) {

		
		Connection con = null;
		PreparedStatement pStmt = null;
		
		try {
			
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/ora");
			con = ds.getConnection();
			
			pStmt = con.prepareStatement("insert into information values (?,?,?,?,?)");
			pStmt.setString(1,userVO.getName());
			pStmt.setString(2,userVO.getSex());
			pStmt.setString(3,userVO.getBirthYear());
			pStmt.setString(4,userVO.getJob());
			pStmt.setString(5,userVO.getPhoneNumber());
			
			System.out.println(userVO);
			
			if( 1 == pStmt.executeUpdate()) {
				userVO.setActive(true);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(pStmt != null) {
				try {
					pStmt.close();
				}catch(Exception e2) {}	
			}
			if(con != null) {
				try {
					con.close();
				}catch(Exception e3) {}
			}
		}
	}

	public UserVO findUser(String name) {
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet rs = null;
		
		UserVO userVO = new UserVO();
		
		try {
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/ora");
			con = ds.getConnection();
			
			pStmt = con.prepareStatement("select * from information where name = ?");
			pStmt.setString(1,name);
			
			rs = pStmt.executeQuery();
			if(rs.next()) {
				System.out.println("쿼리문실행");
				userVO.setName(rs.getString(1));
				userVO.setSex(rs.getString(2));
				userVO.setBirthYear(rs.getString(3));
				userVO.setJob(rs.getString(4));
				userVO.setPhoneNumber(rs.getString(5));
				userVO.setActive(true);
				System.out.println(userVO);
				System.out.println("정보검색완료");
			}else {
				System.out.println("검색실패");
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(Exception e1) {}
			}
			if(pStmt != null) {
				try {
					pStmt.close();
				}catch(Exception e2) {}	
			}
			if(con != null) {
				try {
					con.close();
				}catch(Exception e3) {}
			}
			
		}
		
		return userVO;
	}
	
	public void updateUser(UserVO userVO) {
	
			
		Connection con = null;
		PreparedStatement pStmt = null;
		
		try {
			
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/ora");
			con = ds.getConnection();	
			
			pStmt = con.prepareStatement("update information set sex=?, year=?,"
					+ "job=?, phonenumber=? where name=?");
			
			pStmt.setString(1,userVO.getSex());
			pStmt.setString(2,userVO.getBirthYear());
			pStmt.setString(3,userVO.getJob());
			pStmt.setString(4,userVO.getPhoneNumber());
			pStmt.setString(5,userVO.getName());
			
			System.out.println(userVO);
			
			if( 1 == pStmt.executeUpdate()) {
				userVO.setActive(true);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(pStmt != null) {
				try {
					pStmt.close();
				}catch(Exception e2) {}	
			}
			if(con != null) {
				try {
					con.close();
				}catch(Exception e3) {}
			}
		}
	}
	
}