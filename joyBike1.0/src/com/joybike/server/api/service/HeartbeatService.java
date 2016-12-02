package com.joybike.server.api.service;

import java.util.List;

import com.joybike.server.api.model.vehicleHeartbeat;

public interface HeartbeatService {

	List<vehicleHeartbeat> getGPS(String vehicleId,Integer beginAt,Integer endAt);
}
