package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.MemberEdit;

public class editProfileDAO {

	public editProfileDAO() {
		// TODO Auto-generated constructor stub
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName(common.common.jdbcDriver);
			connection = DriverManager.getConnection(common.common.jdbcURL, common.common.jdbcUsername, common.common.jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void editProfile(MemberEdit mb) throws SQLException {
		String sql = "update member set Firstname = ?, Lastname = ?, Phone =?, Discription = ?, UpdateTime = ? where id = ?;";
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql);) {
			preparedStatement.setString(1, mb.getFirstname());
			preparedStatement.setString(2, mb.getLastname());
			preparedStatement.setString(3, mb.getPhone());
			preparedStatement.setString(4, mb.getDiscription());
			preparedStatement.setString(5, mb.getUpdatename());
			preparedStatement.setInt(6, mb.getId());
			preparedStatement.executeUpdate();
		}
		
	}

	public MemberEdit getMember(String emailin) throws ClassNotFoundException {
		MemberEdit mb = null;

		String sql = "select * from member where Email = ?; ";
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql);) {
			preparedStatement.setString(1, emailin);

			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String fn = rs.getString("Firstname");
				String ln = rs.getString("Lastname");
				String un = rs.getString("Username");
				String pw = rs.getString("Password");
				String em = rs.getString("Email");
				String ph = rs.getString("Phone");
				String ds = rs.getString("Discription");
				String ct = rs.getString("CreatedDate");
				String ut = rs.getString("UpdateTime");
				mb = new MemberEdit(id, fn, ln, un, pw, em, ph, ds, ct, ut);
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		return mb;
	}
	
}