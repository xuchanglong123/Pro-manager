package com.jerrymice.runner.issuanceorders.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jerrymice.runner.entity.Station;
import com.jerrymice.runner.issuanceorders.service.IssuanceOrderService;
import com.jerrymice.runner.issuanceorders.service.IssuanceStationService;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;
import net.sf.json.util.CycleDetectionStrategy;


@Controller
public class IssuanceOrderController {
	@Resource(name="issuanceOrderServiceId")
	private IssuanceOrderService issuanceOrderService;
	@Resource(name="issuanceStationServiceId")
	private IssuanceStationService issuanceStationService;
	
	@RequestMapping("/send/order")
	@ResponseBody
	public String saveOrder(@RequestParam("jsonString")String jsonString) {
		
		return null;
	}
	
	@RequestMapping(value="/display/station",produces = {"text/html;charset=utf-8"})
	@ResponseBody
	public String displayStation(@RequestParam("schooName")String schoolName) {
		List<Station>stationList=issuanceStationService.getStations(schoolName);
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.setCycleDetectionStrategy(CycleDetectionStrategy.LENIENT);
		 JSONArray jsonArray= JSONArray.fromObject(stationList,jsonConfig);
		String jsonString=jsonArray.toString();
		return jsonString;
	}
}
