package com.film.util;

public class MSUtil {
	private String[] filmtitle = new String[4];
	private String[] usertitle = new String[8];
	private String[] newstitleStrings = new String[1];
    public MSUtil(int i){
    	if(i==0){
    		filmtitle();
    	}else if(i==1){
    		usertitle();
    	}
    }
    public String[] getFilmtitle() {
		return filmtitle;
	}

	public String[] getUsertitle() {
		return usertitle;
	}
	public void filmtitle(){
    	filmtitle[0] = "电影名";
    	filmtitle[1] = "售价";
    	filmtitle[2] = "状态";
    	filmtitle[3] = "操作";
    }
	
	public void usertitle(){
		usertitle[0] = "用户ID";
		usertitle[1] = "用户名";
		usertitle[2] = "密码";
		usertitle[3] = "余额";
		usertitle[4] = "VIP";
		usertitle[5] = "VIP剩余日";
		usertitle[6] = "账户状态";
		usertitle[7] = "操作";
	}
	public void newstitle(){
		
	}
}
