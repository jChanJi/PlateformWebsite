package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.Admin;

public class AdminDao {
	private Connection conn;
	private PreparedStatement pstmt;

	public AdminDao() {
		conn = new util.DbHelp().getCon();
	}

	public boolean valiadmin(Admin admin) {
		try {
			pstmt = conn.prepareStatement("select * from admin where name=? and password =?");
			pstmt.setString(1, admin.getName());
			pstmt.setString(2, admin.getPassword());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
				return true;
			else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

}
