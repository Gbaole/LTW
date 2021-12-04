package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Content;

public class PageViewDAO {
	public PageViewDAO() {

	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName(common.common.jdbcDriver);
			connection = DriverManager.getConnection(common.common.jdbcURL, common.common.jdbcUsername,
					common.common.jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public List<Content> getRecordsAd(int start, int total) {
		List<Content> list = new ArrayList<Content>();
		String sql = "select * from content limit " + (start - 1) * 10 + "," + total;
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql);) {
			// System.out.print(sql);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				Content ct = new Content(rs.getInt("id"), rs.getString("Title"), rs.getString("Brief"),
						rs.getString("Content"), rs.getString("CreateDate"), rs.getString("UpdateTime"),
						rs.getInt("AuthorId"));
				list.add(ct);
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}

		return list;
	}

	public int getCountAd() {

		String sql = "SELECT count(id) FROM content";
		int count = 0;
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql);) {

			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				count = rs.getInt(1);
				//System.out.print(count);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	public int getCountMb(int id) {
		String sql = "SELECT count(id) FROM content where AuthorId = ?";
		int count = 0;
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql);) {
			preparedStatement.setInt(1, id);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				count = rs.getInt(1);
				//System.out.print(count);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	public List<Content> getRecordsMb(int start, int total, int id) {
		List<Content> list = new ArrayList<Content>();
		String sql = "select * from content where AuthorId = ? limit " + (start - 1) * 10 + "," + total;
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql);) {
			//System.out.print(sql);
			preparedStatement.setInt(1, id);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				Content ct = new Content(rs.getInt("id"), rs.getString("Title"), rs.getString("Brief"),
						rs.getString("Content"), rs.getString("CreateDate"), rs.getString("UpdateTime"),
						rs.getInt("AuthorId"));
				list.add(ct);
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}

		return list;
	}
}
