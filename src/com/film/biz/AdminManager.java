package com.film.biz;

import java.util.List;

import com.film.bean.UserOrderBean;
import com.film.dao.DBDao;
import com.film.entity.FilmEntity;
import com.film.entity.PayOrderEntity;
import com.film.entity.UserEntity;
import com.film.globle.Constant;

public class AdminManager {
    public List<UserOrderBean> userOrder(int page){
    	return new DBDao().search(String.format(Constant.SELECT_ORDER_ALL, page),UserOrderBean.class);
    }
    public List<PayOrderEntity> userPayOrder(int page){
    	return new DBDao().search(String.format(Constant.SELEC_PAY,page), PayOrderEntity.class);
    }
    public List<UserEntity> user(){
    	return new DBDao().search(Constant.SELECT_USER_NOT_ADMIN, UserEntity.class);
    }
    public List<FilmEntity> film(){
    	return new DBDao().search(Constant.SELECT_FILM, FilmEntity.class);
    }
    public boolean updateUser(String password,String money,String activity,String userid){
    	return new DBDao().update(String.format(Constant.UPDATE_USER, password,money,activity,userid));
    }
    public boolean updateFilm(String price,String activity,String filmid){
    	return new DBDao().update(String.format(Constant.UPDATE_FILM, price,activity,filmid));
    }
}
