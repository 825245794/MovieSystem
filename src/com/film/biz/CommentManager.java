package com.film.biz;

import java.util.List;

import com.film.bean.CommentBean;
import com.film.dao.DBDao;
import com.film.globle.Constant;

public class CommentManager {
    public boolean sendComment(String userid, String filmid, String commentcontent){
    	return new DBDao().update(String.format(Constant.SP_INSERT_F_COMMENT, userid, filmid, commentcontent));
    }
    public List<CommentBean> loadComment(String filmid){
    	return new DBDao().search(String.format(Constant.SELECT_COMMENT_USER_BY_FILMID_ASC, filmid), CommentBean.class);
    }
}
