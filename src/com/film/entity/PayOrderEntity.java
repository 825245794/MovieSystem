package com.film.entity;

public class PayOrderEntity {
    private Integer pay_orderid;
    private Integer pay_userid;
    private Double pay_money;
    private String pay_orderdate;
    private String pay_statusid;
    private String pay_content;
	public Integer getPay_orderid() {
		return pay_orderid;
	}
	public void setPay_orderid(Integer pay_orderid) {
		this.pay_orderid = pay_orderid;
	}
	public Integer getPay_userid() {
		return pay_userid;
	}
	public void setPay_userid(Integer pay_userid) {
		this.pay_userid = pay_userid;
	}
	public Double getPay_money() {
		return pay_money;
	}
	public void setPay_money(Double pay_money) {
		this.pay_money = pay_money;
	}
	public String getPay_orderdate() {
		return pay_orderdate;
	}
	public void setPay_orderdate(String pay_orderdate) {
		this.pay_orderdate = pay_orderdate;
	}
	public String getPay_statusid() {
		return pay_statusid;
	}
	public void setPay_statusid(String pay_statusid) {
		this.pay_statusid = pay_statusid;
	}
	public String getPay_content() {
		return pay_content;
	}
	public void setPay_content(String pay_content) {
		this.pay_content = pay_content;
	}
	
}
