package com.film.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.film.biz.UserManager;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String email;
    private String password;
    private String compassword;
    private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
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
	public String getCompassword() {
		return compassword;
	}
	public void setCompassword(String compassword) {
		this.compassword = compassword;
	}
    private boolean validataRegisterEmail(){
    	Number number=new UserManager().emailCount(email);
    	int count = -1;
    	if(number!=null){
    		count = number.intValue();
    	}else{
    		return false;
    	}
    	try{
    		if(count==0){
     	    boolean flag = new UserManager().registerUser(username, email, password);
     	    if(flag){
     	    	return true;
     	      }
    		}
    		return false;
    	}catch(Exception e){
    		System.out.println("注册失败");
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
	public void registerAccount(){
		System.out.println(email); 
		if(!password.trim().equals(compassword.trim())){
			returnText("两次密码不一致!");
		}
		if(!validataRegisterEmail()){
			System.out.println("Register Fail");
			returnText("用户名已存在!");
		}
		else{
			System.out.println("Register Success");
			returnText("success");
		}
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
}
