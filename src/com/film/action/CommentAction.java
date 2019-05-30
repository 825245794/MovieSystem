package com.film.action;

import com.film.biz.CommentManager;
import com.opensymphony.xwork2.ActionSupport;

public class CommentAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userid;
	private String filmid;
	private String commentcontent;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getCommentcontent() {
		return commentcontent;
	}
	public void setCommentcontent(String commentcontent) {
		this.commentcontent = commentcontent;
	}
	public String getFilmid() {
		return filmid;
	}
	public void setFilmid(String filmid) {
		this.filmid = filmid;
	}
	public String sendComment(){
		new CommentManager().sendComment(userid, filmid, commentcontent);
		return SUCCESS;
	}
    @Override
    public String execute() throws Exception {
    	return SUCCESS;
    }
}
