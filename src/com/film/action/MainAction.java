package com.film.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.film.biz.FilmManager;
import com.film.entity.FilmEntity;
import com.opensymphony.xwork2.ActionSupport;

//private HttpSession session=ServletActionContext.getRequest().getSession();
//private HttpServletRequest request=ServletActionContext.getRequest();
//private HttpServletResponse response=ServletActionContext.getResponse();
public class MainAction extends ActionSupport{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    public String execute() throws Exception {
    	// TODO Auto-generated method stub
    	HttpServletRequest request = ServletActionContext.getRequest();
    	List<FilmEntity> recent = new FilmManager().recent();
    	List<FilmEntity> animate = new FilmManager().filmType("动画","4");
    	List<FilmEntity> action = new FilmManager().filmType("动作","4");
    	request.setAttribute("recent", recent);
    	request.setAttribute("animate", animate);
    	request.setAttribute("action", action);
    	return SUCCESS;
    }
}
