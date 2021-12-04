package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.MemberRegister;

public class RegisterDao {
	public void LoadDriver(String dbDriver) {
		try {
			Class.forName(common.common.jdbcDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con=null;
		try {
			con = DriverManager.getConnection(common.common.jdbcURL,common.common.jdbcUsername,common.common.jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	public String insert(MemberRegister memberRegister) 
	{
		LoadDriver(common.common.jdbcDriver);
		
		Connection con = getConnection();
		
		String result = "1";
		String sql = "insert into doanweb.member(Username, Password, Email) value(?,?,?)";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, memberRegister.getUname());
			ps.setString(2, memberRegister.getPassword());
			ps.setString(3, memberRegister.getEmail());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "0";
		}
		return result;
	}
}
