package homework01;

import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;

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
			//Class.forName("oracle.jdbc.driver.OracleDriver");
			//con = DriverManager.getConnection(dburl, dbuser, dbpwd);
			
			//con = OracleConnectionPool.getInstance().getConnection();
			
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/ora");
			con = ds.getConnection();
			
			pStmt = con.prepareStatement("insert into information values (?,?,?,?,?)");
			pStmt.setString(1,userVO.getName());
			pStmt.setString(2,userVO.getSex());
			pStmt.setString(3,userVO.getBirthYear());
			pStmt.setString(4,userVO.getJob());
			pStmt.setString(5,userVO.getPhoneNumber());
			
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