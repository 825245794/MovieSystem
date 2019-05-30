package com.film.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.film.bean.AccountBean;
import com.film.biz.FilmManager;
import com.film.biz.OrderManager;
import com.film.entity.SeatEntity;
import com.film.globle.Constant;
import com.opensymphony.xwork2.ActionSupport;

public class OrderAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String ticket[];
    private String date;
    private String placeid;
    private String placename;
    private String filmname;
	private String watchname;
	public String getWatchname() {
		return watchname;
	}
	public void setWatchname(String watchname) {
		this.watchname = watchname;
	}
	public String[] getTicket() {
		return ticket;
	}
	public void setTicket(String[] ticket) {
		this.ticket = ticket;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPlaceid() {
		return placeid;
	}
	public void setPlaceid(String placeid) {
		this.placeid = placeid;
	}
	public String getPlacename() {
		return placename;
	}
	public void setPlacename(String placename) {
		this.placename = placename;
	}
	public String getFilmname() {
		return filmname;
	}
	public void setFilmname(String filmname) {
		this.filmname = filmname;
	}
	public String error(){
		return INPUT;
	}
	@Override
	public void validate() {
		HttpSession session=ServletActionContext.getRequest().getSession();
		AccountBean account = (AccountBean)session.getAttribute("account");
		if(account==null){
			super.addFieldError("error", "请先登录!");
			error();
		}else{
		double muti=0;
    	if(account.getVip().equals("0")){
    		muti=Constant.COMMON_MUTIPLE;
    	}else{
    		muti=Constant.VIP_MUTIPLE;
    	}
    	for(int i=0;i<ticket.length;i++){
    	Number number = new OrderManager().purchase(account.getUserid(), placeid, muti, ticket[i]);
    	int rs = number.intValue();
    	if(rs==-1){
    		super.addFieldError("error", "余额不足");
    		error();
    	} 
    	if(rs==-2){
    		super.addFieldError("error", "来晚了...所选的票已被预订");
    		error();
    	} 
    	if(rs==1){
    		insertSeat(ticket[i]);
    		
    	}
        }}
	}
    @Override
    public String execute() throws Exception {
    	System.out.println("order success");
    	return SUCCESS;
    }
    
	public void insertSeat(String seat){
        List<SeatEntity> list = new FilmManager().seat(placeid);
        SeatEntity s = new SeatEntity();
		if(seat.indexOf("A")!=-1){
			if(list.get(0).getSeat_a()!=null&&!list.get(0).getSeat_a().equals("null")){
				s.setSeat_a(list.get(0).getSeat_a()+seat+";");
			}else{
				s.setSeat_a(seat+";");
			}
		}else{
			if(list.get(0).getSeat_a()!=null&&!list.get(0).getSeat_a().equals("null")){
				s.setSeat_a(list.get(0).getSeat_a());
			}else{
				s.setSeat_a("");
			}
		}
		
		if(seat.indexOf("B")!=-1){
			if(list.get(0).getSeat_b()!=null&&!list.get(0).getSeat_b().equals("null")){
				s.setSeat_b(list.get(0).getSeat_b()+seat+";");
			}else{
				s.setSeat_b(seat+";");
			}
		}else{
			if(list.get(0).getSeat_b()!=null&&!list.get(0).getSeat_b().equals("null")){
				s.setSeat_b(list.get(0).getSeat_b());
			}else{
				s.setSeat_b("");
			}
		}
		
		
		if(seat.indexOf("C")!=-1){
			if(list.get(0).getSeat_c()!=null&&!list.get(0).getSeat_c().equals("null")){
				s.setSeat_c(list.get(0).getSeat_c()+seat+";");
			}else{
				s.setSeat_c(seat+";");
			}
		}else{
			if(list.get(0).getSeat_c()!=null&&!list.get(0).getSeat_c().equals("null")){
				s.setSeat_c(list.get(0).getSeat_c());
			}else{
				s.setSeat_c("");
			}
		}
		
		
		if(seat.indexOf("D")!=-1){
			if(list.get(0).getSeat_d()!=null&&!list.get(0).getSeat_d().equals("null")){
				s.setSeat_d(list.get(0).getSeat_d()+seat+";");
			}else{ 
				s.setSeat_d(seat+";");
			}
		}else{
			if(list.get(0).getSeat_d()!=null&&!list.get(0).getSeat_d().equals("null")){
				s.setSeat_d(list.get(0).getSeat_d());
			}else{ 
				s.setSeat_d("");
			}
		}
		
		
		if(seat.indexOf("E")!=-1){
			if(list.get(0).getSeat_e()!=null&&!list.get(0).getSeat_e().equals("null")){
				s.setSeat_e(list.get(0).getSeat_e()+seat+";");
			}else{
				s.setSeat_e(seat+";");
			}
		}else{
			if(list.get(0).getSeat_e()!=null&&!list.get(0).getSeat_e().equals("null")){
				s.setSeat_e(list.get(0).getSeat_e());
			}else{
				s.setSeat_e("");
			}
		}
		
		
		if(seat.indexOf("F")!=-1){
			if(list.get(0).getSeat_f()!=null&&!list.get(0).getSeat_f().equals("null")){
				s.setSeat_f(list.get(0).getSeat_f()+seat+";");
			}else{
				s.setSeat_f(seat+";");
			}
		}else{
			if(list.get(0).getSeat_f()!=null&&!list.get(0).getSeat_f().equals("null")){
				s.setSeat_f(list.get(0).getSeat_f());
			}else{
				s.setSeat_f("");
			}
		}
		
		
		if(seat.indexOf("G")!=-1){
			if(list.get(0).getSeat_g()!=null&&!list.get(0).getSeat_g().equals("null")){
				s.setSeat_g(list.get(0).getSeat_g()+seat+";");
			}else{
				s.setSeat_g(seat+";");
			}
		}else{
			if(list.get(0).getSeat_g()!=null&&!list.get(0).getSeat_g().equals("null")){
				s.setSeat_g(list.get(0).getSeat_g());
			}else{
				s.setSeat_g("");
			}
		}
		
		
		if(seat.indexOf("H")!=-1){
			if(list.get(0).getSeat_h()!=null&&!list.get(0).getSeat_h().equals("null")){
				s.setSeat_h(list.get(0).getSeat_h()+seat+";");
			}else{
				s.setSeat_h(seat+";");
			}
		}else{
			if(list.get(0).getSeat_h()!=null&&!list.get(0).getSeat_h().equals("null")){
				s.setSeat_h(list.get(0).getSeat_h());
			}else{
				s.setSeat_h("");
			}
		}
		
		
		if(seat.indexOf("I")!=-1){
			if(list.get(0).getSeat_i()!=null&&!list.get(0).getSeat_i().equals("null")){
				s.setSeat_i(list.get(0).getSeat_i()+seat+";");
			}else{
				s.setSeat_i(seat+";");
			}
		}else{
			if(list.get(0).getSeat_i()!=null&&!list.get(0).getSeat_i().equals("null")){
				s.setSeat_i(list.get(0).getSeat_i());
			}else{
				s.setSeat_i("");
			}
		}
		
		
		if(seat.indexOf("J")!=-1){
			if(list.get(0).getSeat_j()!=null&&!list.get(0).getSeat_j().equals("null")){
				s.setSeat_j(list.get(0).getSeat_j()+seat+";");
			}else{
				s.setSeat_j(seat+";");
			}
		}else{
			if(list.get(0).getSeat_j()!=null&&!list.get(0).getSeat_j().equals("null")){
				s.setSeat_j(list.get(0).getSeat_j());
			}else{
				s.setSeat_j("");
			}
		}
		
		
		if(seat.indexOf("K")!=-1){
			if(list.get(0).getSeat_k()!=null&&!list.get(0).getSeat_k().equals("null")){
				s.setSeat_k(list.get(0).getSeat_k()+seat+";");
			}else{
				s.setSeat_k(seat+";");
			}
		}else{
			if(list.get(0).getSeat_k()!=null&&!list.get(0).getSeat_k().equals("null")){
				s.setSeat_k(list.get(0).getSeat_k());
			}else{
				s.setSeat_k("");
			}
		}
		
		
		if(seat.indexOf("L")!=-1){
			if(list.get(0).getSeat_l()!=null&&!list.get(0).getSeat_l().equals("null")){
				s.setSeat_l(list.get(0).getSeat_l()+seat+";");
			}else{
				s.setSeat_l(seat+";");
			}
		}else{
			if(list.get(0).getSeat_l()!=null&&!list.get(0).getSeat_l().equals("null")){
				s.setSeat_l(list.get(0).getSeat_l());
			}else{
				s.setSeat_l("");
			}
		}
		
		
		if(seat.indexOf("M")!=-1){
			if(list.get(0).getSeat_m()!=null&&!list.get(0).getSeat_m().equals("null")){
				s.setSeat_m(list.get(0).getSeat_m()+seat+";");
			}else{
				s.setSeat_m(seat+";");
			}
		}else{
			if(list.get(0).getSeat_m()!=null&&!list.get(0).getSeat_m().equals("null")){
				s.setSeat_m(list.get(0).getSeat_m());
			}else{
				s.setSeat_m("");
			}
		}
		
		
		if(seat.indexOf("N")!=-1){
			if(list.get(0).getSeat_n()!=null&&!list.get(0).getSeat_n().equals("null")){
				s.setSeat_n(list.get(0).getSeat_n()+seat+";");
			}else{
				s.setSeat_n(seat+";");
			}
		}else{
			if(list.get(0).getSeat_n()!=null&&!list.get(0).getSeat_n().equals("null")){
				s.setSeat_n(list.get(0).getSeat_n());
			}else{
				s.setSeat_n("");
			}
		}
		
		
		if(seat.indexOf("O")!=-1){
			if(list.get(0).getSeat_o()!=null&&!list.get(0).getSeat_o().equals("null")){
				s.setSeat_o(list.get(0).getSeat_o()+seat+";");
			}else{
				s.setSeat_o(seat+";");
			}
		}else{
			if(list.get(0).getSeat_o()!=null&&!list.get(0).getSeat_o().equals("null")){
				s.setSeat_o(list.get(0).getSeat_o());
			}else{
				s.setSeat_o("");
			}
		}
		
		
		if(seat.indexOf("P")!=-1){
			if(list.get(0).getSeat_p()!=null&&!list.get(0).getSeat_p().equals("null")){
				s.setSeat_p(list.get(0).getSeat_p()+seat+";");
			}else{
				s.setSeat_p(seat+";");
			}
		}else{
			if(list.get(0).getSeat_p()!=null&&!list.get(0).getSeat_p().equals("null")){
				s.setSeat_p(list.get(0).getSeat_p());
			}else{
				s.setSeat_p("");
			}
		}
		
		
		if(seat.indexOf("Q")!=-1){
			if(list.get(0).getSeat_q()!=null&&!list.get(0).getSeat_q().equals("null")){
				s.setSeat_q(list.get(0).getSeat_q()+seat+";");
			}else{
				s.setSeat_q(seat+";");
			}
		}else{
			if(list.get(0).getSeat_q()!=null&&!list.get(0).getSeat_q().equals("null")){
				s.setSeat_q(list.get(0).getSeat_q());
			}else{
				s.setSeat_q("");
			}
		}
		
		
		if(seat.indexOf("R")!=-1){
			if(list.get(0).getSeat_r()!=null&&!list.get(0).getSeat_r().equals("null")){
				s.setSeat_r(list.get(0).getSeat_r()+seat+";");
			}else{
				s.setSeat_r(seat+";");
			} 
			
		}else{
			if(list.get(0).getSeat_r()!=null&&!list.get(0).getSeat_r().equals("null")){
				s.setSeat_r(list.get(0).getSeat_r());
			}else{
				s.setSeat_r("");
			} 
		}
		new OrderManager().updateSeat(placeid, s);
	}
}
