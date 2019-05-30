package com.film.entity;

public class CommentEntity {
    private int commentid;
    private int userid;
    private int activity;
    private int filmid;
	private String commentdate;
    private String commentcontent;
    public int getFilmid() {
		return filmid;
	}
	public void setFilmid(int filmid) {
		this.filmid = filmid;
	}
	public int getCommentid() {
		return commentid;
	}
	public void setCommentid(int commentid) {
		this.commentid = commentid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getActivity() {
		return activity;
	}
	public void setActivity(int activity) {
		this.activity = activity;
	}
	public String getCommentdate() {
		return commentdate;
	}
	public void setCommentdate(String commentdate) {
		this.commentdate = commentdate;
	}
	public String getCommentcontent() {
		return commentcontent;
	}
	public void setCommentcontent(String commentcontent) {
		this.commentcontent = commentcontent;
	}
}
