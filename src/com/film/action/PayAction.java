package com.film.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.film.bean.AccountBean;
import com.film.biz.UserManager;
import com.film.globle.Constant;
import com.opensymphony.xwork2.ActionSupport;

public class PayAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private String money;
    private String month;
    private String amount;
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String payVip(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		AccountBean account = (AccountBean)session.getAttribute("account");
		if(month.equals("default")){
			try{
				int day=Integer.parseInt(amount);
				if(day<=0){
					return ERROR;
				}
				Number number = new UserManager().payVip(account.getUserid(), String.valueOf(day*30), String.valueOf(day*Constant.VIP_FEE));
				if(number!=null){
					int num = number.intValue();
					if(num==1){
						account.setVip("1");
						return SUCCESS;
					}else{
						return ERROR;
					}
				}
			}catch (Exception e) {
				return ERROR;
			}
		}else{
			int day=Integer.parseInt(month);
			Number number = new UserManager().payVip(account.getUserid(), String.valueOf(day*30), String.valueOf(day*Constant.VIP_FEE));
			if(number!=null){
				int num = number.intValue();
				if(num==1){
					account.setVip("1");
					return SUCCESS;
				}else{
					return ERROR;
				}
			}
		}
		return ERROR;
	}
	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		AccountBean account = (AccountBean)session.getAttribute("account");
        boolean f = new UserManager().pay(account.getUserid(), money);
        if(f){
        	return SUCCESS;
        }
		return ERROR;
	}
}
