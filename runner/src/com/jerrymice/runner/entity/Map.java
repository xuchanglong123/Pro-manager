package com.jerrymice.runner.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="map")
public class Map {
	private Integer mId;
	private String mName;
	private String mLng;
	private String mLat;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getmId() {
		return mId;
	}
	public void setmId(Integer mId) {
		this.mId = mId;
	}
	@Column
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	@Column
	public String getmLng() {
		return mLng;
	}
	public void setmLng(String mLng) {
		this.mLng = mLng;
	}
	@Column
	public String getmLat() {
		return mLat;
	}
	public void setmLat(String mLat) {
		this.mLat = mLat;
	}
}
