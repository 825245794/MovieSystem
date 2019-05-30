package com.film.biz;

import java.util.List;

import com.film.bean.UserInfoBean;
import com.film.bean.UserOrderBean;
import com.film.dao.DBDao;
import com.film.entity.UserEntity;
import com.film.globle.Constant;

public class UserManager {
    public List<UserEntity> login(String email){
    	return new DBDao().search(String.format(Constant.SELECT_USER_BY_MAIL ,email), UserEntity.class);
    }
    public Number emailCount(String email){
    	return new DBDao().singleResultset(String.format(Constant.SELECT_USER_EMAIL_COUNT_BY_MAIL ,email));
    }
    public boolean registerUser(String username, String mail, String password){
    	return new DBDao().update(String.format(Constant.SP_REGISTER,username,mail,password)); 
    }
    public List<UserOrderBean> userOrderAll(String userid,int page) {
		return new DBDao().search(String.format(Constant.SELECT_ORDER_ALL_BY_USEID, userid,page), UserOrderBean.class);
	}
    public boolean refund(String orderid){
    	return new DBDao().update(String.format(Constant.SP_REFUND, orderid));
    }
    public boolean editUserInfo(String username,String sex,String userid,String img,String birthday){
    	return new DBDao().update(String.format(Constant.SP_EDITUSERINFO, username,sex,userid,img,birthday));
    }
    public List<UserInfoBean> loadUserInfo(String userid){
    	return new DBDao().search(String.format(Constant.SELECT_USER_USERINFO, userid,userid), UserInfoBean.class);
    }
    public boolean pay(String userid,String money){
    	return new DBDao().update(String.format(Constant.SP_PAY,userid,money));
    }
    public Number payVip(String userid,String day,String amount){
    	return new DBDao().singleResultset(String.format(Constant.SP_PAYVIP, userid,day,amount));
    }
    public boolean editPassword(String password,String userid){
    	return new DBDao().update(String.format(Constant.UPDATE_PASSWORD, password,userid));
    }
}
