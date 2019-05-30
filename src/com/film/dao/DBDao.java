package com.film.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.film.util.DBUtil;

public class DBDao {
    public boolean update(String sql){
    	QueryRunner qr = new QueryRunner(DBUtil.getDataSource());
    	 try {
    		qr.update(sql);
    	    return true;
    		 } catch (SQLException e) {
    			 e.printStackTrace();
    		     return false;
    		 }
    }
    
    public int updateAffect(String sql){
    	QueryRunner qr = new QueryRunner(DBUtil.getDataSource());
    	 try {
    		int row = qr.update(sql);
    	    return row;
    		 } catch (SQLException e) {
    			 e.printStackTrace();
    		     return -1;
    		 }
    }
    public <T> List<T> search(String sql,Class<T> obj){
    	QueryRunner qr = new QueryRunner(DBUtil.getDataSource());
    	try{
    		List <T> list = qr.query(sql, new BeanListHandler<T>(obj));
    		return list;
    	}catch (SQLException e) {
    		e.printStackTrace();
    		}
		return null; 
    } 
    
    public Number singleResultset(String sql){
        QueryRunner qr = new QueryRunner(DBUtil.getDataSource());
        try{
        Number count = qr.query(sql,new ScalarHandler<Number>());
//        double num = count.doubleValue();
//        System.out.println(num);
        return count;
        }catch(SQLException e){
        	e.printStackTrace();
        	return null;
        }
    }
}
