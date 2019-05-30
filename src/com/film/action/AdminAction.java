package com.film.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.film.bean.UserOrderBean;
import com.film.biz.AdminManager;
import com.film.entity.FilmEntity;
import com.film.entity.PayOrderEntity;
import com.film.entity.UserEntity;
import com.film.util.MSUtil;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String page;
	private String type;
	private String money;
	private String password;
	private String activity;
	private String filmname;
	private String userid;
	private String filmid;
	private String price;
    public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getFilmid() {
		return filmid;
	}
	public void setFilmid(String filmid) {
		this.filmid = filmid;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public String getFilmname() {
		return filmname;
	}
	public void setFilmname(String filmname) {
		this.filmname = filmname;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	private void userOrderPage(String page){
    	HttpServletRequest request=ServletActionContext.getRequest();
    	List<UserOrderBean> order = new AdminManager().userOrder(page.equals("0")?0:(Integer.parseInt(page))*20+1);
    	request.setAttribute("order", order);
    	request.setAttribute("page", Integer.parseInt(page));
	}
	private void userPayOrderPage(String page){
    	HttpServletRequest request=ServletActionContext.getRequest();
    	List<PayOrderEntity> order = new AdminManager().userPayOrder(page.equals("0")?0:(Integer.parseInt(page))*20+1);
    	request.setAttribute("order", order);
    	request.setAttribute("page", Integer.parseInt(page));
	}
	private void compositePage(){
    	HttpServletRequest request=ServletActionContext.getRequest();
    	if(type.equals("0")){
    		List<FilmEntity> list = new AdminManager().film();
    		request.setAttribute("title", new MSUtil(Integer.parseInt(type)).getFilmtitle());
    		request.setAttribute("url", "");
    		request.setAttribute("film", list.iterator());
    		request.setAttribute("type", type);
    	}
       if(type.equals("1")){
    	    List<UserEntity> list = new AdminManager().user();
    		request.setAttribute("title",new MSUtil(Integer.parseInt(type)).getUsertitle());
    		request.setAttribute("url", "");
    		request.setAttribute("user", list.iterator());
    		request.setAttribute("type", type);
    	}
	}
	public String nextPageOrder(){
    	page = String.valueOf(Integer.parseInt(page)+1);
    	userOrderPage(page);
		return "order";
	}
	public String previousPageOrder(){
    	page = String.valueOf(Integer.parseInt(page)-1);
    	userOrderPage(page);
		return "order";
	}
	public String nextPagePayOrder(){
    	page = String.valueOf(Integer.parseInt(page)+1);
    	userPayOrderPage(page);
		return "pay";
	} 
	public String previousPagePayOrder(){
    	page = String.valueOf(Integer.parseInt(page)-1);
    	userPayOrderPage(page);
		return "pay";
	}

	public String userOrder(){
		userOrderPage("0");
    	return "order";
    }
	
	public String userPayOrder(){
		userPayOrderPage("0");
		return "pay";
	}
	public String composite(){
		compositePage();
		return "composite";
	}
	public String user(){
		new AdminManager().updateUser(password, money, activity, userid);
		compositePage();
		return "composite";
	}
	public String film(){
		new AdminManager().updateFilm(price, activity, filmid);
		compositePage();
		return "composite";
	}
    @Override
    public String execute() throws Exception {
    	// TODO Auto-generated method stub
    	return SUCCESS;
    }
}
