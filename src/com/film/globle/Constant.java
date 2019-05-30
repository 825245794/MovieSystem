package com.film.globle;

/**
 * Constant class
 * 
 * @author LJL
 * @date 2017/10/28
 */
public class Constant {
/**---SELECT---*/
    public static final String SELECT_USER_BY_MAIL = "select * from f_user where mail='%s'";
    public static final String SELECT_FILM = "select * from f_film";
    public static final String SELECT_USER_EMAIL_COUNT_BY_MAIL = "select count(mail) from f_user where mail='%s'";
    public static final String SELECT_USERID_BY_MAIL = "select userid from f_user where mail=%s";
    public static final String SELECT_FILM_BY_DESC_LIMIT = "select * from f_film order by filmid desc limit %s";
    public static final String SELECT_FILM_BY_FILMTYPE_LIMIT = "select * from f_film where filmtype='%s' limit %s";
    public static final String SELECT_FILM_BY_FILMID = "select * from f_film where filmid='%s'";
    public static final String SELECT_COMMENT_USER_BY_FILMID_ASC = "select * from f_comment,f_user where filmid='%s' and f_comment.userid=f_user.userid order by commentdate desc";
    public static final String SELECT_PLACEROOM_PLACE_BY_FILMID = "select f_place.placeroomid,placeroom from f_placeroom,f_place where f_place.filmid='%s' and f_place.placeroomid=f_placeroom.placeroomid and placedate='%s' order by f_place.placeid asc";
    public static final String SELECT_PLACE_BY_FILMID_PLACEROOMID = "select * from f_place where filmid='%s' and placeroomid='%s' and placedate='%s'";
    public static final String SELECT_PLACE_DATE_BY_FILMID = "select distinct(placedate) from f_place where f_place.filmid='%s' and CURRENT_DATE<=placedate order by placedate asc";
    public static final String SELECT_SEAT_BY_PLACEID = "select * from f_seat where placeid='%s'";
    public static final String SELECT_SEAT = "select * from f_seat";
    public static final String SELECT_STORE = "select store from f_place where placeid='%s'";
    public static final String SELECT_ORDER_ALL_BY_USEID = "select * from f_order,f_place,f_film,f_placeroom,f_status where f_placeroom.placeroomid=f_place.placeroomid and f_status.statusid=f_order.statusid and f_order.placeid=f_place.placeid and f_place.filmid=f_film.filmid and f_order.userid='%s' order by orderdate desc limit %s,20 ";
    public static final String SELECT_USER_USERINFO = "select * from f_user where userid='%s'";
    
    public static final String SELECT_ORDER_ALL = "select * from f_order,f_place,f_film,f_placeroom,f_status where f_placeroom.placeroomid=f_place.placeroomid and f_status.statusid=f_order.statusid and f_order.placeid=f_place.placeid and f_place.filmid=f_film.filmid order by orderdate desc limit %s,20 ";
    public static final String SELEC_PAY = "select * from f_payorder order by pay_orderdate desc limit %s,20";
    public static final String SELECT_USER_NOT_ADMIN = "select * from f_user where admin='0'";
/**---INSERT---*/
    public static final String INSERT_TO_USER = "insert into f_user(username,password,admin,vip,mail,img,activity) values ('%s','%s','%s','%s','%s','%s','%s')";
    public static final String INSERT_TO_USERINFO = "insert into f_userinfo(registerdate,sex,birthday,userid) values (%s,'%s',%s,'%s')";

/**---UPDATE---*/
    public static final String UPDATE_SEAT = "update f_seat set seat_a='%s',seat_b='%s',seat_c='%s',seat_d='%s',seat_e='%s',seat_f='%s',seat_g='%s',seat_h='%s',seat_i='%s',seat_j='%s',seat_k='%s',seat_l='%s', " 
    		+ "seat_m='%s',seat_n='%s',seat_o='%s',seat_p='%s',seat_q='%s',seat_r='%s' where placeid='%s'";
    public static final String UPDATE_PASSWORD = "update f_user set password='%s' where mail='%s'";
    public static final String UPDATE_USER = "update f_user set password='%s',money='%s',activity='%s' where userid='%s'";
    public static final String UPDATE_FILM = "update f_film set price='%s',activity='%s' where filmid='%s'";
/**---PROCEDURE---*/
    public static final String SP_REGISTER = "call sp_register('%s','%s','%s')";
    public static final String SP_INSERT_F_COMMENT = "call sp_insertcomment('%s','%s','%s')";
    public static final String SP_BUY = "call sp_buy('%s','%s','%s','%s',@re)";//userid,placeid,muti,seat
    public static final String SP_REFUND = "call sp_refund('%s')";
    public static final String SP_EDITUSERINFO = "call sp_edituserinfo('%s','%s','%s','%s','%s')";
    public static final String SP_PAY = "call sp_pay('%s','%s')";
    public static final String SP_PAYVIP = "call sp_payvip('%s','%s','%s',@re)";
/**---FUNCTION---*/  
    
/**---Constant---*/
    public static final int MAX_SEAT = 324;
    public static final double VIP_MUTIPLE = 0.8;
    public static final double COMMON_MUTIPLE = 1;
    public static final double VIP_FEE = 60;
}
