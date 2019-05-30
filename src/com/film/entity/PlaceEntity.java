package com.film.entity;

public class PlaceEntity {
    private int placeid;
    private int placeroomid;
    private int filmid;
    private String placedate;
    private String begintime;
    private String endtime;
    private int store;
	public int getStore() {
		return store;
	}
	public void setStore(int store) {
		this.store = store;
	}
	public int getPlaceid() {
		return placeid;
	}
	public void setPlaceid(int placeid) {
		this.placeid = placeid;
	}
	public int getPlaceroomid() {
		return placeroomid;
	}
	public void setPlaceroomid(int placeroomid) {
		this.placeroomid = placeroomid;
	}
	public int getFilmid() {
		return filmid;
	}
	public void setFilmid(int filmid) {
		this.filmid = filmid;
	}
	public String getPlacedate() {
		return placedate;
	}
	public void setPlacedate(String placedate) {
		this.placedate = placedate;
	}
	public String getBegintime() {
		return begintime;
	}
	public void setBegintime(String begintime) {
		this.begintime = begintime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
}
