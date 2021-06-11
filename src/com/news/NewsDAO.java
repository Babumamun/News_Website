package com.news;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.CallableStatement;

public class NewsDAO {
	private PreparedStatement pstmt;
    private String sql;
    private ResultSet rs;
    private News nws;
    private CallableStatement cs;
    private ArrayList<News> news;
    public ArrayList<News> getAll(){
       sql="select * from news";
        try {
            pstmt=DB.getConn().prepareStatement(sql);
            rs=pstmt.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return getByRs(rs);
    }
    private ArrayList<News> getByRs(ResultSet rs){
        try {
            if(rs==null||!rs.next())
                return null;
            news=new ArrayList<News>();
            do{
                nws=new News();
                nws.setId(rs.getString("ID"));
                nws.setTittle(rs.getString("Tittle"));
                nws.setDes(rs.getString("Des"));
                news.add(nws);
            }while (rs.next());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return news;
    }
    
    public ArrayList<News> getByTittle(String tittle){
        try {
            if(tittle==null||tittle.equals("")){
                sql="select * from news";
                pstmt=DB.getConn().prepareStatement(sql);
            }
            else {
                sql="select * from news where tittle like  ?";
                pstmt=DB.getConn().prepareStatement(sql);
                pstmt.setString(1,"%"+tittle+"%");
            }
            rs=pstmt.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return getByRs(rs);
    }
    
    
    public int add(News news){
        int result=0;
        sql="insert into news values(?,?,?)";
        try {
        	 pstmt=DB.getConn().prepareStatement(sql);
             pstmt.setString(1,news.getId());
             pstmt.setString(2,news.getTittle());
             pstmt.setString(3,news.getDes());
             result=pstmt.executeUpdate();
            
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    
    public int update(News news){
        int result=0;
        sql="update news set tittle=?,des=? where id=?";
        try {
            pstmt=DB.getConn().prepareStatement(sql);
            pstmt.setString(1,news.getTittle());
            pstmt.setString(2,news.getDes());
            pstmt.setString(3,news.getId());
            result=pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    
    public News getById(String id){
        sql="{call getbyid(?)}";
        try {
            cs=DB.getConn().prepareCall(sql);
            cs.setString(1,id);
            rs=cs.executeQuery();
            if(rs==null)
                return null;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return getByRs(rs).get(0);
    }
    
    public int del(String id){
        sql="delete from news where id=?";
        int result=0;
        try {
            pstmt=DB.getConn().prepareStatement(sql);
            pstmt.setString(1,id);
            result=pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    
}
