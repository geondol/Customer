package customer.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import customer.VO.customerVO;

public class customerDAO {
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public Connection getConnection() {
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			conn=DriverManager.getConnection(url, "hyun", "1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public void insert(customerVO cvo) {
		
		getConnection();
		try {
			String sql = "insert into customer values(?,?,?,?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cvo.getId());
			pstmt.setString(2, cvo.getPassword());
			pstmt.setString(3, cvo.getEmail());
			pstmt.setString(4, cvo.getTel());
			pstmt.setString(5, cvo.getHobby());
			pstmt.setString(6, cvo.getJob());
			pstmt.setString(7, cvo.getAge());
			pstmt.setString(8, cvo.getContent());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null){ try{pstmt.close();} catch (SQLException e) {e.printStackTrace();}}
			if(conn!=null){ try{conn.close();} catch (SQLException e) {e.printStackTrace();}}
		}
	}
	
	public ArrayList<customerVO> selectAll() {
		
		ArrayList<customerVO> arr=new ArrayList<>();
		getConnection();
		try {
			String sql = "select * from customer";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while (rs.next()) {
				customerVO cvo = new customerVO();
			cvo.setId(rs.getString(1));
			cvo.setPassword(rs.getString(2));
			cvo.setEmail(rs.getString(3));
			cvo.setTel(rs.getString(4));
			cvo.setHobby(rs.getString(5));
			cvo.setJob(rs.getString(6));
			cvo.setAge(rs.getString(7));
			cvo.setContent(rs.getString(8));
				
			arr.add(cvo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null){ try{rs.close();} catch (SQLException e) {e.printStackTrace();}}
			if(pstmt!=null){ try{pstmt.close();} catch (SQLException e) {e.printStackTrace();}}
			if(conn!=null){ try{conn.close();} catch (SQLException e) {e.printStackTrace();}}
		}
		return arr;
	}
	
	public customerVO selectOne(String id) {
		
		getConnection();
		customerVO cvo = new customerVO();
		try {
			String sql = "select * from customer where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if (rs.next()) {
			cvo.setId(rs.getString(1));
			cvo.setPassword(rs.getString(2));
			cvo.setEmail(rs.getString(3));
			cvo.setTel(rs.getString(4));
			cvo.setHobby(rs.getString(5));
			cvo.setJob(rs.getString(6));
			cvo.setAge(rs.getString(7));
			cvo.setContent(rs.getString(8));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null){ try{rs.close();} catch (SQLException e) {e.printStackTrace();}}
			if(pstmt!=null){ try{pstmt.close();} catch (SQLException e) {e.printStackTrace();}}
			if(conn!=null){ try{conn.close();} catch (SQLException e) {e.printStackTrace();}}
		}
		return cvo;
	}
	
	public void update(customerVO cvo) {
		
		getConnection();
		try {
			String sql = "update customer set email=?, tel=? where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cvo.getEmail());
			pstmt.setString(2, cvo.getTel());
			pstmt.setString(3, cvo.getId());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null){ try{pstmt.close();} catch (SQLException e) {e.printStackTrace();}}
			if(conn!=null){ try{conn.close();} catch (SQLException e) {e.printStackTrace();}}
		}
	}
	
	public String getDBpassword(customerVO cvo) {
		String DBpassword="";
		getConnection();
		try {
			String sql = "select password from customer where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cvo.getId());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				DBpassword=rs.getString(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null){ try{rs.close();} catch (SQLException e) {e.printStackTrace();}}
			if(pstmt!=null){ try{pstmt.close();} catch (SQLException e) {e.printStackTrace();}}
			if(conn!=null){ try{conn.close();} catch (SQLException e) {e.printStackTrace();}}
		}
		
		return DBpassword;
	}
	
	public String getDBId(customerVO cvo) {
		String DBId="";
		getConnection();
		try {
			String sql = "select id from customer where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cvo.getId());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				DBId=rs.getString(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null){ try{rs.close();} catch (SQLException e) {e.printStackTrace();}}
			if(pstmt!=null){ try{pstmt.close();} catch (SQLException e) {e.printStackTrace();}}
			if(conn!=null){ try{conn.close();} catch (SQLException e) {e.printStackTrace();}}
		}
		
		return DBId;
	}
	
	public void delete(customerVO cvo) {
		
		getConnection();
		try {
			String sql = "delete from customer where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cvo.getId());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null){ try{pstmt.close();} catch (SQLException e) {e.printStackTrace();}}
			if(conn!=null){ try{conn.close();} catch (SQLException e) {e.printStackTrace();}}
		}
	}
}
