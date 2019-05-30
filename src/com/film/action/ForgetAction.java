package com.film.action;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.apache.struts2.ServletActionContext;

import com.film.bean.AccountBean;
import com.film.biz.UserManager;
import com.opensymphony.xwork2.ActionSupport;

public class ForgetAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

    private String password;
    private String verifypassword;
    private String email;
    public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getVerifypassword() {
		return verifypassword;
	}
	public void setVerifypassword(String verifypassword) {
		this.verifypassword = verifypassword;
	}
	public String execute(){
		if(password!=null||!password.trim().equals("")){
			if(verifypassword.equals(password)){
				HttpSession session=ServletActionContext.getRequest().getSession();
		    	AccountBean account = (AccountBean)session.getAttribute("account");
		    	boolean f = new UserManager().editPassword(password, email);
		    	if(f){
		    		if(account!=null){
		    			session.removeAttribute("account");
		    		}
		    		return SUCCESS;
		    	}else{
		    		JOptionPane.showMessageDialog(null, "修改失败","提示", 0, null);
		    		return ERROR;
		    	}
			}
			else{
				JOptionPane.showMessageDialog(null, "两次密码不一致","提示", 0, null);
				return ERROR;
			}
		}
		JOptionPane.showMessageDialog(null, "修改失败","提示", 0, null);
		return ERROR;
	}
}
