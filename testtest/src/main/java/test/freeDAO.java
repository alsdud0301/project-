package test;

import java.sql.Connection;  
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class freeDAO {
	private Connection conn;
	private ResultSet rs;
	
	public freeDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/epicus";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}		
	}
	public int getNext() {
		String sql = "select freeID from content order by freeID desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);	
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;  
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public int write(String fTitle,String userID,String fInto) {
		String sql = "insert into content values(?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, getNext());
			pstmt.setString(2, fTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, fInto);
			
			pstmt.setInt(5, 1);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	  public ArrayList<free> getList(int pageNumber) { String SQL =
	  "SELECT * FROM content WHERE freeID < ? AND bbsAvailable = 1 ORDER BY freeID DESC LIMIT 10"
	  ; ArrayList<free> list = new ArrayList<free>(); try { PreparedStatement pstmt
	  = conn.prepareStatement(SQL); pstmt.setInt(1, getNext() - (pageNumber-1)*10);
	  rs = pstmt.executeQuery();
	  
	  while(rs.next()) { free free = new free(); free.setFreeID(rs.getInt(1));
	  free.setfTitle(rs.getString(2)); free.setUserID(rs.getString(3));
	  free.setfInto(rs.getString(4)); free.setBbsAvailable(rs.getInt(5));
	  
	  
	  list.add(free); } }catch(Exception e) { e.printStackTrace(); } return list; }
	  
	  
	  
	  public boolean nextPage(int pageNumber) { String
	  SQL="SELECT * FROM content WHERE freeID < ? AND bbsAvailable = 1 ORDER BY freeID DESC LIMIT 10"
	  ;
	  
	  try { PreparedStatement pstmt = conn.prepareStatement(SQL);
	  pstmt.setInt(1,getNext() - (pageNumber -1) * 10); rs = pstmt.executeQuery();
	  if (rs.next()) { return true; } } catch(Exception e) { e.printStackTrace(); }
	  return false; }
	  
	  
	  
	  public free getfree(int freeID){
	  
	  String SQL ="SELECT * FROM content WHERE freeID = ?"; try { PreparedStatement
	  pstmt = conn.prepareStatement(SQL); pstmt.setInt(1, freeID); 
	  rs = pstmt.executeQuery();
	  if (rs.next()) {
	  
	  free free = new free(); free.setFreeID(rs.getInt(1));
	  free.setfTitle(rs.getString(2)); free.setUserID(rs.getString(3));
	  free.setfInto(rs.getString(4)); free.setBbsAvailable(rs.getInt(5));
	  
	  
	  return free;
	  
	  } } catch (Exception e) { e.printStackTrace(); } return null; }
	 
	  public free findfreeByUserId(int freeID, String userID) { 
			String SQL = "SELECT * FROM content WHERE freeID = ? AND userID = ?"; 
			try { 
				PreparedStatement pstmt = conn.prepareStatement(SQL); 
				pstmt.setInt(1, freeID);
				pstmt.setString(2, userID);
				rs = pstmt.executeQuery(); 
				if (rs.next()) { 
				  free free = new free(); 
				  free.setFreeID(rs.getInt(1)); 
				  free.setfTitle(rs.getString(2)); 
				  free.setUserID(rs.getString(3)); 
				  free.setfInto(rs.getString(4)); 
				  free.setBbsAvailable(rs.getInt(5)); 
				  return free; 
				} 
			} catch (Exception e) { 
			   e.printStackTrace(); 
			} 
			return null; 
		} 
}

