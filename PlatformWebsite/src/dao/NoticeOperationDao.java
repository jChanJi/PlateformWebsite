package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import entity.New;
import entity.Notice;

public class NoticeOperationDao {
	private static Connection conn;
	private static PreparedStatement pstmt;
	public NoticeOperationDao() {
		conn = new util.DbHelp().getCon();
	}
	//insert
	public  boolean ninsert(Notice doc) {
		int i = 0;
		String sql = "insert into db_notice (ntitle,ntext,ntime) values(?,?,?)";
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1,doc.getNtitle());
	        pstmt.setString(2,doc.getNtext());
	        pstmt.setString(3,doc.getNtime());
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
	public  boolean nupdate(Notice doc) {
	    int i = 0;
	    String sql = "update db_notice set ntitle='" + doc.getNtitle() + "',ntext='" + doc.getNtext() + "',ntime='" + doc.getNtime() + "' where nid='" + doc.getNid() + "'";
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
	public boolean nselect(String id,Notice doc) {
		int i=0;
		try {
			pstmt = conn.prepareStatement("select * from db_notice where nid=?");
			pstmt.setString(1,id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				doc.setNid(rs.getInt("nid"));
			    doc.setNtitle(rs.getString("ntitle"));
			    doc.setNtext(rs.getString("ntext"));
			    doc.setNtime(rs.getString("ntime"));
			    i++;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
	public boolean nshow(ArrayList<Notice> list)  {
		try {
			pstmt = conn.prepareStatement("select * from db_notice");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				Notice new1 =  new Notice();
				new1.setNid(rs.getInt("nid"));
				new1.setNtitle(rs.getString("ntitle"));
				new1.setNtext(rs.getString("ntext"));
				new1.setNtime(rs.getString("ntime"));
				list.add(new1);
			}
		}
		 catch (SQLException e) {
			// TODO Auto-generated catch block
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
	public  boolean ndelete(String id) {
	    int i = 0;
	    String sql = "delete from db_notice where nid='" + id + "'";
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
