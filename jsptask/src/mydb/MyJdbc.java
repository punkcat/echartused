package mydb;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

import mybean.Indate;
import mybean.Usercard;

public class MyJdbc {
	private static Connection getConn(){
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/card?useUnicode=true&characterEncoding=utf-8&useSSL=false";
;
		String username = "root";
		String password = "260017";
		Connection conn = null;
	    try {
	        Class.forName(driver); //classLoader,加载对应驱动
	        conn = (Connection) DriverManager.getConnection(url, username, password);
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return conn;
	}
	public int insertUser(Indate date){
	    Connection conn = getConn();
	    int i = 0;
	    String sql = "insert into user (username,pwd) values(?,?)";
	    PreparedStatement pstmt = null;
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1, date.getUsername());
	        pstmt.setString(2, date.getPwd());
	        i = pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return i;		
	}
	public Integer selectUser(Indate date){
		Connection conn = getConn();
		String sql = "select * from user";
		String username = null;
		String password = null;
		Statement stmt = null;
		try{
			stmt =  conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				username = rs.getString(1);
				if(!username.equals(date.getUsername())){
					continue;
				}
				password = rs.getString(2);
				if(!password.equals(date.getPwd())){
					continue;
				}
				if(username.equals(date.getUsername()) && password.equals(date.getPwd())){
					return 1;
				}
			}
	        stmt.close();
	        conn.close();
		}catch (SQLException e) {
	       e.printStackTrace();
	    }
		return 0;
	}
	public ArrayList<String> selectUserinfo(String username){
		Connection conn = getConn();
		String sql = "select * from userinfo";
		ArrayList<String> list = new ArrayList<String>();
		String username1 = null;
		Statement stmt = null;
		try{
			stmt =  conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				username1 = rs.getString(1);
				if(!username1.equals(username)){
					continue;
				}
				for(int i = 2;i <= 6;i++){
					list.add(rs.getString(i));
				}
			}
	        stmt.close();
	        conn.close();
		}catch (SQLException e) {
	       e.printStackTrace();
	    }
		return list;
	}
	public ArrayList<Usercard> selectUsercard(String username){
		Connection conn = getConn();
		String sql = "select * from usercard";
		ArrayList<Usercard> list = new ArrayList<Usercard>();
		String username1 = null;
		Statement stmt = null;
		try{
			stmt =  conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				username1 = rs.getString(1);
				if(!username1.equals(username)){
					continue;
				}
				Usercard usercard = new Usercard();
				String tamp = null;
				String balance = null;
				String time = null;
				String operate = null;
				tamp = rs.getString(2);
				balance = rs.getString(3);
				time = rs.getString(4);
				operate = rs.getString(5);
				usercard.setTamp(tamp);
				usercard.setBalance(balance);
				usercard.setTime(time);
				usercard.setOperate(operate);
				list.add(usercard);
			}
	        stmt.close();
	        conn.close();
		}catch (SQLException e) {
	       e.printStackTrace();
	    }
		return list;
	}
	public int insertUsercard(Usercard usercard){
	    Connection conn = getConn();
	    int i = 0;
	    String sql = "INSERT INTO `usercard` (`username`, `tamp`, `balance`, `time`, `operate`) VALUES (?, ?, ?, ?, ?)";
	    PreparedStatement pstmt = null;
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1,(usercard.getUsername()));
	        pstmt.setString(2,(usercard.getTamp()));
	        pstmt.setString(3,(usercard.getBalance()));
	        pstmt.setString(4,(usercard.getTime()));
	        pstmt.setString(5,(usercard.getOperate()));
	        i = pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return i;		
	}
}
