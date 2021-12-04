package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Content;

public class addContentDAO {
	public addContentDAO() {
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
	
	public boolean AddContent(Content content) throws Exception { 
		boolean result = true;
		String sql = "INSERT INTO doanweb.content (Title, Brief, Content, AuthorId) value(?,?,?,?);";
//		System.out.println(content.getBrief());
//		System.out.println(content.getAuthorid());
//		System.out.println(content.getTitle());
//		System.out.println(content.getContent());
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql);) {
			preparedStatement.setString(1, content.getTitle());
			preparedStatement.setString(2, content.getBrief());
			preparedStatement.setString(3, content.getContent());
			preparedStatement.setInt(4, content.getAuthorid());
			preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			result = false;
		}
		
        return result;
    }
}
