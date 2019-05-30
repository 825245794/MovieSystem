package com.film.biz;

import java.util.List;

import com.film.dao.DBDao;
import com.film.entity.FilmEntity;
import com.film.entity.PlaceEntity;
import com.film.entity.PlaceRoomEntity;
import com.film.entity.SeatEntity;
import com.film.globle.Constant;
/**
 * FilmManager class
 * 
 * @author LJL
 * @date 2017/10/14
 */
public class FilmManager {
    public List<FilmEntity> recent(){
        return new DBDao().search(String.format(Constant.SELECT_FILM_BY_DESC_LIMIT, "3"), FilmEntity.class);
    }
    public List<FilmEntity> filmType(String filmtype,String size){
    	return new DBDao().search(String.format(Constant.SELECT_FILM_BY_FILMTYPE_LIMIT, filmtype, size), FilmEntity.class);
    }
    public List<FilmEntity> filmDetail(String filmid){
    	return new DBDao().search(String.format(Constant.SELECT_FILM_BY_FILMID, filmid), FilmEntity.class);
    }
    public List<PlaceEntity> placeRoom(String filmid,String date){
    	return new DBDao().search(String.format(Constant.SELECT_PLACEROOM_PLACE_BY_FILMID, filmid,date), PlaceEntity.class);
    }    
    public List<PlaceRoomEntity> placeRoomName(String filmid,String date){
    	return new DBDao().search(String.format(Constant.SELECT_PLACEROOM_PLACE_BY_FILMID, filmid,date), PlaceRoomEntity.class);
    }
    public List<PlaceEntity> WatchTime(String filmid,String placeroomid,String date){
    	return new DBDao().search(String.format(Constant.SELECT_PLACE_BY_FILMID_PLACEROOMID, filmid, placeroomid,date), PlaceEntity.class);
    }
    public List<PlaceEntity> placeDate(String filmid){
    	return new DBDao().search(String.format(Constant.SELECT_PLACE_DATE_BY_FILMID, filmid), PlaceEntity.class);
    }
    public List<SeatEntity> seat(String placeid){
    	return new DBDao().search(String.format(Constant.SELECT_SEAT_BY_PLACEID, placeid), SeatEntity.class);
    }
    public List<PlaceEntity> store(String placeid){
    	return new DBDao().search(String.format(Constant.SELECT_STORE, placeid), PlaceEntity.class);
    }
}
