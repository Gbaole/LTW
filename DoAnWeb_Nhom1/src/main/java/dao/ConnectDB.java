package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.NoiDung;

public class ConnectDB {
	
	Connection connect = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    protected void hasDriver() throws Exception {
        try {
            Class.forName(common.common.jdbcDriver);
        } catch (ClassNotFoundException ex) {
            throw new Exception("Invalid Driver!!Please check this drver....");
        }
    }
    
    protected Connection openConnect() throws Exception {
        if (connect == null) {
            hasDriver();
            // url_sql = "....";
            try {
                this.connect = DriverManager.getConnection(common.common.jdbcURL, common.common.jdbcUsername, common.common.jdbcPassword);
            } catch (SQLException e) {
                throw new Exception(e.getMessage() + "Connect failed to database .... ");
            }
        }
        return connect;
    }
    
    protected Statement getStatement() throws SQLException, Exception {
        if (stmt == null) {
            stmt = openConnect().createStatement();
        }
        return stmt;
    }
    
    public ArrayList<NoiDung> getAllContents() throws Exception {
        ArrayList<NoiDung> lst = new ArrayList<NoiDung>();
        String strSQL = "select * from content";
        try {
            rs = getStatement().executeQuery(strSQL);
            while (rs.next()) {
                int ms = rs.getInt("id");
                String ten = rs.getString("Title");
                String tomtat = rs.getString("Brief");
                String noidung = rs.getString("Content");
                String ngay = rs.getString("CreateDate");
                NoiDung nd = new NoiDung(ms, ten, tomtat, noidung, ngay);
                lst.add(nd);
            }
        } catch (Exception e) {
            throw new Exception(e.getMessage() + " Error at : " + strSQL);
        }
        closeConnet();
        return lst;
    }
    
    
    public boolean deleteContent(int id) throws Exception {
        String sql = "delete from content where id=?";
        PreparedStatement pst = openConnect().prepareStatement(sql);
        pst.setInt(1, id);
        return pst.executeUpdate() > 0;
    }
   
    public int executeUpdate(String strSQL) throws Exception {
        int result = 0;
        try {
            result = getStatement().executeUpdate(strSQL);
        } catch (Exception ex) {
            throw new Exception(ex.getMessage() + " Error at: " + strSQL);
        } finally {
            this.closeConnet();
        }
        return result;
    }
    
    public NoiDung getContentByID(int id) throws Exception {
        String sql = "select * from content where id=?";
        PreparedStatement pst = openConnect().prepareStatement(sql);
        pst.setInt(1, id);
        ResultSet rs = pst.executeQuery();
        NoiDung nd = null;
        if (rs.next()) {
        	int ms = rs.getInt("id");
            String ten = rs.getString("Title");
            String tomtat = rs.getString("Brief");
            String noidung = rs.getString("Content");
            String ngay = rs.getString("CreateDate");
            nd = new NoiDung(ms, ten, tomtat, noidung, ngay);
        }
        return nd;
    }
    
    public boolean UpdateContent(int id, NoiDung newnd) throws Exception { 
        String sql = "update content set Title=?, Brief=?, Content=?, UpdateTime= now()  where Id=?";
        PreparedStatement pst = openConnect().prepareStatement(sql);
        pst.setString(1, newnd.getTitle());
        pst.setString(2, newnd.getBrief());
        pst.setString(3, newnd.getContent());
        pst.setInt(4, newnd.getId());
        
        
        return pst.executeUpdate() > 0;
    }
    
    public void closeConnet() throws SQLException {
        if (rs != null && !rs.isClosed()) {
            rs.close();
        }
        if (stmt != null) {
            stmt.close();
        }
        if (connect != null) {
            connect.close();
        }
    }



}
