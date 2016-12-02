package com.joybike.server.api.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.joybike.server.api.model.vehicleHeartbeat;

public interface HeartbeatDao {
	
	//根据车辆ID查
	List<vehicleHeartbeat> selByVehId(@Param("vehicleId") String vehicleId,@Param("beginAt") Integer beginAt,@Param("endAt") Integer endAt);
}
