package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Content;

public class searchDAO {


	public searchDAO() {
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

	public List<Content> getSearchProducts(String txtSearch, int id) throws Exception {
		
		List<Content> ls = new ArrayList<>();
		
		String sql = "select * from content where (Title like ? or Brief like ?) and AuthorId = ?;";
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql);) {
			preparedStatement.setString(1, "%" + txtSearch + "%");
			preparedStatement.setString(2, "%" + txtSearch + "%");
			preparedStatement.setInt(3, id);

			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				ls.add(new Content(rs.getInt("id"), rs.getString("Title"), rs.getString("Brief"), rs.getString("Content"),
						rs.getString("CreateDate"), rs.getString("UpdateTime"), rs.getInt("AuthorId")));
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		return ls;
	}
		public List<Content> getSearchProductsAdmin(String txtSearch) throws Exception {
		
		List<Content> ls = new ArrayList<>();
		
		String sql = "select * from content where (Title like ? or Brief like ?);";
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql);) {
			preparedStatement.setString(1, "%" + txtSearch + "%");
			preparedStatement.setString(2, "%" + txtSearch + "%");

			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				ls.add(new Content(rs.getInt("id"), rs.getString("Title"), rs.getString("Brief"), rs.getString("Content"),
						rs.getString("CreateDate"), rs.getString("UpdateTime"), rs.getInt("AuthorId")));
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		return ls;
	}
}
