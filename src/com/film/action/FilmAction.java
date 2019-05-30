package com.film.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.apache.struts2.ServletActionContext;

import com.film.bean.AccountBean;
import com.film.bean.CommentBean;
import com.film.biz.CommentManager;
import com.film.biz.FilmManager;
import com.film.entity.FilmEntity;
import com.film.entity.PlaceEntity;
import com.film.entity.PlaceRoomEntity;
import com.film.entity.SeatEntity;
import com.opensymphony.xwork2.ActionSupport;

public class FilmAction extends ActionSupport{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    
	private String filmid;
	private String placeroomid;
	private String date;
	private String placeid;
	public String getPlaceid() {
		return placeid;
	}
	public void setPlaceid(String placeid) {
		this.placeid = placeid;
	}
	public String getFilmid() {
		return filmid;
	}
	public void setFilmid(String filmid) {
		this.filmid = filmid;
	}
	public String getPlaceroomid() {
		return placeroomid;
	}
	public void setPlaceroomid(String placeroomid) {
		this.placeroomid = placeroomid;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void seat(){
		try{
		List<SeatEntity> seatlist = new FilmManager().seat(placeid);
		String seat= "";
		if(seatlist.get(0).getSeat_a()!=null){
			seat+=seatlist.get(0).getSeat_a();
		} 
		if(seatlist.get(0).getSeat_b()!=null){
			seat+=seatlist.get(0).getSeat_b();
		}
		if(seatlist.get(0).getSeat_c()!=null){
			seat+=seatlist.get(0).getSeat_c();
		}
		if(seatlist.get(0).getSeat_d()!=null){
			seat+=seatlist.get(0).getSeat_d();
		}
		if(seatlist.get(0).getSeat_e()!=null){
			seat+=seatlist.get(0).getSeat_e();
		}
		if(seatlist.get(0).getSeat_f()!=null){
			seat+=seatlist.get(0).getSeat_f();
		}
		if(seatlist.get(0).getSeat_g()!=null){
			seat+=seatlist.get(0).getSeat_g();
		} 
		if(seatlist.get(0).getSeat_h()!=null){
			seat+=seatlist.get(0).getSeat_h();
		} 
		if(seatlist.get(0).getSeat_i()!=null){
			seat+=seatlist.get(0).getSeat_i();
		}
		if(seatlist.get(0).getSeat_j()!=null){
			seat+=seatlist.get(0).getSeat_j();
		}
		if(seatlist.get(0).getSeat_k()!=null){
			seat+=seatlist.get(0).getSeat_k();
		} 
		if(seatlist.get(0).getSeat_l()!=null){
			seat+=seatlist.get(0).getSeat_l();
		} 
		if(seatlist.get(0).getSeat_m()!=null){
			seat+=seatlist.get(0).getSeat_m();
		} 
		if(seatlist.get(0).getSeat_n()!=null){
			seat+=seatlist.get(0).getSeat_n();
		}
		if(seatlist.get(0).getSeat_o()!=null){
			seat+=seatlist.get(0).getSeat_o();
		} 
		if(seatlist.get(0).getSeat_p()!=null){
			seat+=seatlist.get(0).getSeat_p();
		}
	    if(seatlist.get(0).getSeat_q()!=null){
			seat+=seatlist.get(0).getSeat_q();
		} 
		if(seatlist.get(0).getSeat_r()!=null){
			seat+=seatlist.get(0).getSeat_r();
		}
		HttpServletResponse response = ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(seat);
		out.flush(); 
		out.close();
		}catch (Exception e) {
			
	   }
	}
	@Override
	public void validate() {
		// TODO Auto-generated method stub
		HttpSession session = ServletActionContext.getRequest().getSession();
		AccountBean account = (AccountBean)session.getAttribute("account");
		if(account==null){
			JOptionPane.showMessageDialog(null, "请先登录", "提示" , 0, null);
			super.addFieldError("error", "error");
		}
	}
	public void room(){
	try{
		String room ="";
		String roomname="";
		List<PlaceEntity> list = new FilmManager().placeRoom(filmid, date);
		List<PlaceRoomEntity> name = new FilmManager().placeRoomName(filmid, date);
		for(int i=0;i<list.size();i++){
			room+=list.get(i).getPlaceroomid()+";"; 
			roomname+=name.get(i).getPlaceroom()+";";
		}
		HttpServletResponse response = ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(room+"|"+roomname);
		out.flush(); 
		out.close();
		}catch (Exception e) {
	   }
		
	}
	public void watchTime(){
	try{
		String time ="";
		String placeid="";
		List<PlaceEntity> list = new FilmManager().WatchTime(filmid, placeroomid,date);
		for(int i=0;i<list.size();i++){
			time+=list.get(i).getBegintime().substring(0, list.get(i).getBegintime().lastIndexOf(":"))+"~"+list.get(i).getEndtime().substring(0, list.get(i).getEndtime().lastIndexOf(":"))+";";
			placeid+=list.get(i).getPlaceid()+";";
		}
		HttpServletResponse response = ServletActionContext.getResponse();  
	    response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(time+"|"+placeid);
		out.flush();
		out.close();
		}catch (Exception e) {
		}
	}
	public void store(){
		List<PlaceEntity> store = new FilmManager().store(placeid);
		try{
		HttpServletResponse response = ServletActionContext.getResponse();  
	    response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(store.get(0).getStore());
		out.flush();
		out.close();
		}catch (Exception e) {
		}
	}
	public String filmDetail(){
		HttpServletRequest request=ServletActionContext.getRequest();
		List<FilmEntity> film = new FilmManager().filmDetail(filmid);
		List<FilmEntity> favourite = new FilmManager().filmType(film.get(0).getFilmtype(),"5");
		List<CommentBean> comment = new CommentManager().loadComment(filmid);
		List<PlaceEntity> calendar = new FilmManager().placeDate(filmid);
		request.setAttribute("film", film);
		request.setAttribute("favourite", favourite);
		request.setAttribute("comment", comment);
		request.setAttribute("calendar", calendar);
		return "detail";
	}
	@Override
    public String execute() throws Exception {
    	return SUCCESS;
    }
}
