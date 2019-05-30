package com.film.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.film.bean.AccountBean;
import com.film.bean.UserOrderBean;
import com.film.biz.UserManager;
import com.opensymphony.xwork2.ActionSupport;

public class UserOrderAction extends ActionSupport{

	/**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;
	private String orderid;
	private String page;
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	private void userOrderPage(String page){
		HttpSession session=ServletActionContext.getRequest().getSession();
    	HttpServletRequest request=ServletActionContext.getRequest();
    	AccountBean account = (AccountBean)session.getAttribute("account");
    	List<UserOrderBean> order = new UserManager().userOrderAll(account.getUserid(), page.equals("0")?0:(Integer.parseInt(page))*20+1);
    	request.setAttribute("order", order);
    	request.setAttribute("page", Integer.parseInt(page));
	}
	public String nextPage(){
    	page = String.valueOf(Integer.parseInt(page)+1);
    	userOrderPage(page);
		return SUCCESS;
	}
	public String previousPage(){
    	page = String.valueOf(Integer.parseInt(page)-1);
    	userOrderPage(page);
		return SUCCESS;
	}
	public String refund(){
		new UserManager().refund(orderid);
		userOrderPage(page);
		return SUCCESS;
	}
    @Override
    public String execute() throws Exception {
    	userOrderPage("0");
    	return SUCCESS;
    }
}
