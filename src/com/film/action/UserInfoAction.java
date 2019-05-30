package com.film.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.film.bean.AccountBean;
import com.film.bean.UserInfoBean;
import com.film.biz.UserManager;
import com.opensymphony.xwork2.ActionSupport;

public class UserInfoAction extends ActionSupport{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final int BUFFER_SIZE = 16 * 1024 ;
	private File myfile;
	private String myfileFileName;
    private String sex;
    private String year;
    private String month;
    private String day;
    private String username;
	
	public String getMyfileFileName() {
		return myfileFileName;
	}
	public void setMyfileFileName(String myfileFileName) {
		this.myfileFileName = myfileFileName;
	}
	public File getMyfile() {
		return myfile;
	}
	public void setMyfile(File myfile) {
		this.myfile = myfile;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	private static void copy(File src, File dst) {
	try {
	InputStream in = null ;//输入流
	OutputStream out = null ;//输出流
	try {
	in = new BufferedInputStream( new FileInputStream(src), BUFFER_SIZE);
	out = new BufferedOutputStream( new FileOutputStream(dst), BUFFER_SIZE);
	byte [] buffer = new byte [BUFFER_SIZE];
	while (in.read(buffer) > 0 ) {
	out.write(buffer);
	}
	} finally {
	if ( null != in) {
	in.close();
	}
	if ( null != out) {
	out.close();
	}
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	}

	public String load(){
       HttpSession session=ServletActionContext.getRequest().getSession();
       AccountBean account = (AccountBean)session.getAttribute("account");
	   List<UserInfoBean> info = new UserManager().loadUserInfo(account.getUserid());
	   HttpServletRequest request=ServletActionContext.getRequest();
	   request.setAttribute("info", info);
	   return SUCCESS;
	}
	@Override
	public void validate() {
		// TODO Auto-generated method stub
		HttpSession session=ServletActionContext.getRequest().getSession();
    	AccountBean account = (AccountBean)session.getAttribute("account");
    	if(account==null){
    		super.addFieldError("error", "请先登录");
    	}
    	
	}
    @Override
    public String execute() throws Exception {
    	try{
    		int vyear = Integer.parseInt(year);
    		int vmonth = Integer.parseInt(month);
    		int vday = Integer.parseInt(day);
    		if(vyear>2050||vyear<1940){
    			super.addFieldError("error", "年份错误");
    			return INPUT;
    		}
    		if(vmonth>12||vmonth<1){
    			super.addFieldError("error", "月份错误");
    			return INPUT;
    		}
    		if(vday>31||vday<0){
    			super.addFieldError("error", "日期错误");
    			return INPUT;
    		}
    	}catch (Exception e) {
    		super.addFieldError("error", "日期错误");
			return INPUT;
		}
    	HttpSession session=ServletActionContext.getRequest().getSession();
    	AccountBean account = (AccountBean)session.getAttribute("account");
    	if(myfile!=null){
        	File imageFile = new File(ServletActionContext.getServletContext().getRealPath("/resource/userimg" ) + "/" +account.getUserid()+myfileFileName.substring(myfileFileName.lastIndexOf(".")));
        	account.setUsername(username);
        	copy(myfile, imageFile);
        	new UserManager().editUserInfo(username, sex, account.getUserid(), account.getUserid()+myfileFileName.substring(myfileFileName.lastIndexOf(".")), year+"-"+month+"-"+day+" 00:00:00");
    	}else{
    		new UserManager().editUserInfo(username, sex, account.getUserid(), null, year+"-"+month+"-"+day+" 00:00:00");
    		account.setUsername(username);
    	}
    	load();
    	return SUCCESS;
    }
}
