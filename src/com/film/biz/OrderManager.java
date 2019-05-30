package com.film.biz;


import com.film.dao.DBDao;
import com.film.entity.SeatEntity;
import com.film.globle.Constant;

public class OrderManager {
    public Number purchase(String userid,String placeid,double muti,String seat){
    	return new DBDao().singleResultset(String.format(Constant.SP_BUY, userid,placeid,muti,seat));
    }
    public boolean updateSeat(String placeid,SeatEntity seat){
    	return new DBDao().update(String.format(Constant.UPDATE_SEAT, seat.getSeat_a(),seat.getSeat_b(),seat.getSeat_c(),seat.getSeat_d(),seat.getSeat_e(),seat.getSeat_f(),seat.getSeat_g(),seat.getSeat_h(),seat.getSeat_i(),seat.getSeat_j(),seat.getSeat_k(),seat.getSeat_l(),seat.getSeat_m(),seat.getSeat_n(),seat.getSeat_o(),seat.getSeat_p(),seat.getSeat_q(),seat.getSeat_r(),placeid));
    }
}
