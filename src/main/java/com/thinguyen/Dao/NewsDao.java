package com.thinguyen.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.mapper.Mapper;
import org.apache.jasper.tagplugins.jstl.core.ForEach;

import com.thinguyen.mapper.NewsMapper;
import com.thinguyen.model.NewsModel;

public class NewsDao {
	private String jdbcURL = "jdbc:mysql://localhost:3306/jspservletecommerce?allowPublicKeyRetrieval=true&useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456789";
    private NewsMapper mapper;
    
    private static final String SELECT_ALL_NEWS = "select * from news";
    
    
    public NewsDao() {
    	this.mapper = new NewsMapper();
    }
    

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
    
    public List<NewsModel> selectAllNews() {
        List <NewsModel> news = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_NEWS);) {
             ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
            	news.add(mapper.mapRow(rs));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return news;
    }
    
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
