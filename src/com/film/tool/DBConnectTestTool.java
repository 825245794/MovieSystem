package com.film.tool;

import java.util.List;

import com.film.dao.DBDao;
import com.film.entity.CommentEntity;
public class DBConnectTestTool {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
    DBDao db = new DBDao();
    String sql = "select * from f_comment";
    List<CommentEntity> list = db.search(sql, CommentEntity.class);
    for(int i=0;i<list.size();i++){
    	System.out.println(list.get(i).getCommentcontent());
    }
	}

}
