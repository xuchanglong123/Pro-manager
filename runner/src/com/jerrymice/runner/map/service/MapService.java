package com.jerrymice.runner.map.service;

import java.io.Serializable;

import com.jerrymice.runner.entity.Map;
import com.jerrymice.runner.map.dao.MapDao;

public class MapService {
	private MapDao mapDao;

	public void setMapDao(MapDao mapDao) {
		this.mapDao = mapDao;
	}
	
	public Serializable saveMap(Map map) {
		return mapDao.save(map);
	}
}
