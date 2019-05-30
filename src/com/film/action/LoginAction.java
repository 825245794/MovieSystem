package com.film.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.film.bean.AccountBean;
import com.film.biz.UserManager;
import com.film.entity.UserEntity;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
//	private HttpSession session=ServletActionContext.getRequest().getSession();
//	private HttpServletRequest request=ServletActionContext.getRequest();
//	private HttpServletResponse response=ServletActionContext.getResponse();
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean validataLoginPassword(){
		try{
		HttpSession session=ServletActionContext.getRequest().getSession();
		List<UserEntity> list=new UserManager().login(username);
		if(password.equals(list.get(0).getPassword())&&list.get(0).getActivity().equals("1")){
			AccountBean account = new AccountBean();
			account.setImg(list.get(0).getImg());
			account.setActivity(list.get(0).getActivity());
			account.setAdmin(list.get(0).getAdmin());
			account.setVip(list.get(0).getVip());
			account.setMail(list.get(0).getMail());
			account.setUserid(list.get(0).getUserid());
			account.setUsername(list.get(0).getUsername());
			session.setAttribute("account", account);
			return true;
		 }
		return false;
		}catch(Exception e){
			System.out.println("Login fail.");
			return false;
		}
	}
	public String returnText(String a){  
	    try{  
	    HttpServletResponse response = ServletActionContext.getResponse();  
	    response.setContentType("text/html;charset=utf-8");
	    PrintWriter out = response.getWriter();  
	    out.print(a);  
	    out.flush();  
	    out.close();  
	    }catch(Exception e){
	    	e.printStackTrace();
	    } 
		return INPUT;
	} 
	public void loginAccount(){
		//System.out.println(username); 
		if(!validataLoginPassword()){
			System.out.println("Login Fail");
			returnText("用户名或密码错误!");
		}
		else{
			System.out.println("Login Success");
			returnText("success");
		}
	}
	public String loginOut(){
		HttpSession session=ServletActionContext.getRequest().getSession();
		session.removeAttribute("account");
		return SUCCESS;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}

}
