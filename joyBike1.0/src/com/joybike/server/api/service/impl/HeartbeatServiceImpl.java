package com.joybike.server.api.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.joybike.server.api.dao.HeartbeatDao;
import com.joybike.server.api.model.vehicleHeartbeat;
import com.joybike.server.api.service.HeartbeatService;

@Service("HeartbeatService")
public class HeartbeatServiceImpl implements HeartbeatService {

	@Resource
	private HeartbeatDao heartbeatDao;
	
	@Override
	public List<vehicleHeartbeat> getGPS(String vehicleId, Integer beginAt, Integer endAt) {
		// TODO Auto-generated method stub
		return heartbeatDao.selByVehId(vehicleId, beginAt, endAt);
	}

}
