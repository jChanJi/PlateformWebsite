package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import entity.New;

public class NewOperationDao {
	private static Connection conn;
	private static PreparedStatement pstmt;
	public NewOperationDao() {
		conn = new util.DbHelp().getCon();
	}
	//insert
	public  boolean minsert(New doc) {
		int i = 0;
		String sql = "insert into db_new (mtitle,mtext,mtime) values(?,?,?)";
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1,doc.getMtitle());
	        pstmt.setString(2,doc.getMtext());
	        pstmt.setString(3,doc.getMtime());
	        i = pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    if(i!=0)
	    	return true;
	    else {
			return false;
		}
	}
	
	//updata
	public  boolean mupdate(New doc) {
	    int i = 0;
	    String sql = "update db_new set mtitle='" + doc.getMtitle() + "',mtext='" + doc.getMtext() + "',mtime='" + doc.getMtime() + "' where mid='" + doc.getMid() + "'";
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        i = pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    if(i!=0)
	    	return true;
	    else {
			return false;
		}
	}
	
	//find
	public boolean mselect(String id,New doc) {
		int i=0;
		try {
			pstmt = conn.prepareStatement("select * from db_new where mid=?");
			pstmt.setString(1,id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				doc.setMid(rs.getInt("mid"));
			    doc.setMtitle(rs.getString("mtitle"));
			    doc.setMtext(rs.getString("mtext"));
			    doc.setMtime(rs.getString("mtime"));
			    i++;
			}
			
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		if (i!=0) {
			return true;
		}
		else
		{
			return false;
		}
	}
	//show
	public boolean show(ArrayList<New> list)  {
		try {
			pstmt = conn.prepareStatement("select * from db_new");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				New new1 =  new New();
				new1.setMid(rs.getInt("mid"));
				new1.setMtitle(rs.getString("mtitle"));
				new1.setMtext(rs.getString("mtext"));
				new1.setMtime(rs.getString("mtime"));
				list.add(new1);
			}
		}
		 catch (SQLException e) {
	
			e.printStackTrace();
		}
		
		if(list.size()!=0)
		{
			return true;
		}
		else {
			return false;
		}
		
	}
	//delete
	public  boolean mdelete(String id) {
	    int i = 0;
	    String sql = "delete from db_new where mid='" + id + "'";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        i = pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    if(i!=0)
	    	return true;
	    else {
			return false;
		}
	}
}
