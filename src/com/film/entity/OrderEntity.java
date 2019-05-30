package com.film.entity;

public class OrderEntity {
    private int orderid;
    private int userid;
    private int placeid;
    private String datetime;
    private int statusid;
    private double ordersum;
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getPlaceid() {
		return placeid;
	}
	public void setPlaceid(int placeid) {
		this.placeid = placeid;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	public int getStatusid() {
		return statusid;
	}
	public void setStatusid(int statusid) {
		this.statusid = statusid;
	}
	public double getOrdersum() {
		return ordersum;
	}
	public void setOrdersum(double ordersum) {
		this.ordersum = ordersum;
	}
}
