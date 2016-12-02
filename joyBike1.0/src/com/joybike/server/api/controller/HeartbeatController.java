package com.joybike.server.api.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.joybike.server.api.model.vehicleHeartbeat;
import com.joybike.server.api.service.HeartbeatService;
import com.joybike.server.api.util.UnixTimeUtils;

@Controller
@RequestMapping("/heartbeat")
public class HeartbeatController {

	@Resource
	private HeartbeatService heartbeatService;
	
	@RequestMapping("getGPS")
	public ModelAndView getGPS(String vehicleId, String beginAt, String endAt){
		try {
			SimpleDateFormat format = new SimpleDateFormat("yyyy年MM月dd日 hh:mm:ss");
			Date begin = null;
			Date end = null;
			try {
				begin = format.parse(beginAt);
				end = format.parse(endAt);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			int b = UnixTimeUtils.getUnixTimestamp(begin);
			int e = UnixTimeUtils.getUnixTimestamp(end);
			List<vehicleHeartbeat> gps = heartbeatService.getGPS(vehicleId, b, e);
			ModelAndView modelAndView = new ModelAndView();//("jsp/gps", "gps",gps)
			modelAndView.setViewName("jsp/gps");
			modelAndView.addObject("gps",gps);
			modelAndView.addObject("vehicleId",vehicleId);
			return modelAndView;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("GPS数据获取失败！");
		}
	}
}