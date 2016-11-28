package com.joybike.server.api.model;

import java.io.Serializable;
import java.math.BigDecimal;

public class vehicleHeartbeat implements Serializable {
    /** 
     * 
     *  @Author lisy
    **/
    private Long id;

    /** 
     * 车锁ID
     *  @Author lisy
    **/
    private Long lockId;

    /** 
     * 固件版本
     *  @Author lisy
    **/
    private String firmwareVersion;

    /** 
     * 车锁配置版本
     *  @Author lisy
    **/
    private String allocation;

    /** 
     * 定位类型0:gps,1:基站
     *  @Author lisy
    **/
    private String baseStationType;

    /** 
     * GPS模式下的utc时间
     *  @Author lisy
    **/
    private Long gpsTime;

    /** 
     * GPS的纬度
     *  @Author lisy
    **/
    private BigDecimal dimension;

    /** 
     * GPS的经度
     *  @Author lisy
    **/
    private BigDecimal longitude;

    /** 
     * 基站的锁内时间
     *  @Author lisy
    **/
    private Long lockTime;

    /** 
     * 小区号
     *  @Author lisy
    **/
    private String cellId;

    /** 
     * 基站号
     *  @Author lisy
    **/
    private String stationId;

    /** 
     * 速度
     *  @Author lisy
    **/
    private String speed;

    /** 
     * 方向
     *  @Author lisy
    **/
    private String direction;

    /** 
     * 唤醒模式（1车辆可被电话或短信叫醒，2也可被震动唤醒）
     *  @Author lisy
    **/
    private Integer arousalType;

    /** 
     * 车辆按照定义如果检测到报警状态，则在此项上报
     *  @Author lisy
    **/
    private String custom;

    /** 
     * 当前车锁状态 0为锁定 1为开启
     *  @Author lisy
    **/
    private Integer lockStatus;

    /** 
     * 电池状态：0充电中1放电中
     *  @Author lisy
    **/
    private Integer batteryStatus;

    /** 
     * 电池剩余百分比
     *  @Author lisy
    **/
    private String batteryPercent;

    /** 
     * 解锁次数
     *  @Author lisy
    **/
    private Integer unlockNumber;

    /** 
     * 订单code
     *  @Author lisy
    **/
    private String orderCode;

    /** 
     * 创建时间
     *  @Author lisy
    **/
    private Integer createAt;

    public vehicleHeartbeat(Long id, Long lockId, String firmwareVersion, String allocation, String baseStationType, Long gpsTime, BigDecimal dimension, BigDecimal longitude, Long lockTime, String cellId, String stationId, String speed, String direction, Integer arousalType, String custom, Integer lockStatus, Integer batteryStatus, String batteryPercent, Integer unlockNumber, String orderCode, Integer createAt) {
        this.id = id;
        this.lockId = lockId;
        this.firmwareVersion = firmwareVersion;
        this.allocation = allocation;
        this.baseStationType = baseStationType;
        this.gpsTime = gpsTime;
        this.dimension = dimension;
        this.longitude = longitude;
        this.lockTime = lockTime;
        this.cellId = cellId;
        this.stationId = stationId;
        this.speed = speed;
        this.direction = direction;
        this.arousalType = arousalType;
        this.custom = custom;
        this.lockStatus = lockStatus;
        this.batteryStatus = batteryStatus;
        this.batteryPercent = batteryPercent;
        this.unlockNumber = unlockNumber;
        this.orderCode = orderCode;
        this.createAt = createAt;
    }

    public vehicleHeartbeat(){

    }

    @Override
    public String toString() {
        return "vehicleHeartbeat{" +
                "id=" + id +
                ", lockId=" + lockId +
                ", firmwareVersion='" + firmwareVersion + '\'' +
                ", allocation='" + allocation + '\'' +
                ", baseStationType='" + baseStationType + '\'' +
                ", gpsTime=" + gpsTime +
                ", dimension=" + dimension +
                ", longitude=" + longitude +
                ", lockTime=" + lockTime +
                ", cellId='" + cellId + '\'' +
                ", stationId='" + stationId + '\'' +
                ", speed='" + speed + '\'' +
                ", direction='" + direction + '\'' +
                ", arousalType=" + arousalType +
                ", custom='" + custom + '\'' +
                ", lockStatus=" + lockStatus +
                ", batteryStatus=" + batteryStatus +
                ", batteryPercent='" + batteryPercent + '\'' +
                ", unlockNumber=" + unlockNumber +
                ", orderCode='" + orderCode + '\'' +
                ", createAt=" + createAt +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getLockId() {
        return lockId;
    }

    public void setLockId(Long lockId) {
        this.lockId = lockId;
    }

    public String getFirmwareVersion() {
        return firmwareVersion;
    }

    public void setFirmwareVersion(String firmwareVersion) {
        this.firmwareVersion = firmwareVersion == null ? null : firmwareVersion.trim();
    }

    public String getAllocation() {
        return allocation;
    }

    public void setAllocation(String allocation) {
        this.allocation = allocation == null ? null : allocation.trim();
    }

    public String getBaseStationType() {
        return baseStationType;
    }

    public void setBaseStationType(String baseStationType) {
        this.baseStationType = baseStationType == null ? null : baseStationType.trim();
    }

    public Long getGpsTime() {
        return gpsTime;
    }

    public void setGpsTime(Long gpsTime) {
        this.gpsTime = gpsTime;
    }

    public BigDecimal getDimension() {
        return dimension;
    }

    public void setDimension(BigDecimal dimension) {
        this.dimension = dimension;
    }

    public BigDecimal getLongitude() {
        return longitude;
    }

    public void setLongitude(BigDecimal longitude) {
        this.longitude = longitude;
    }

    public Long getLockTime() {
        return lockTime;
    }

    public void setLockTime(Long lockTime) {
        this.lockTime = lockTime;
    }

    public String getCellId() {
        return cellId;
    }

    public void setCellId(String cellId) {
        this.cellId = cellId == null ? null : cellId.trim();
    }

    public String getStationId() {
        return stationId;
    }

    public void setStationId(String stationId) {
        this.stationId = stationId == null ? null : stationId.trim();
    }

    public String getSpeed() {
        return speed;
    }

    public void setSpeed(String speed) {
        this.speed = speed == null ? null : speed.trim();
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction == null ? null : direction.trim();
    }

    public Integer getArousalType() {
        return arousalType;
    }

    public void setArousalType(Integer arousalType) {
        this.arousalType = arousalType;
    }

    public String getCustom() {
        return custom;
    }

    public void setCustom(String custom) {
        this.custom = custom == null ? null : custom.trim();
    }

    public Integer getLockStatus() {
        return lockStatus;
    }

    public void setLockStatus(Integer lockStatus) {
        this.lockStatus = lockStatus;
    }

    public Integer getBatteryStatus() {
        return batteryStatus;
    }

    public void setBatteryStatus(Integer batteryStatus) {
        this.batteryStatus = batteryStatus;
    }

    public String getBatteryPercent() {
        return batteryPercent;
    }

    public void setBatteryPercent(String batteryPercent) {
        this.batteryPercent = batteryPercent == null ? null : batteryPercent.trim();
    }

    public Integer getUnlockNumber() {
        return unlockNumber;
    }

    public void setUnlockNumber(Integer unlockNumber) {
        this.unlockNumber = unlockNumber;
    }

    public String getOrderCode() {
        return orderCode;
    }

    public void setOrderCode(String orderCode) {
        this.orderCode = orderCode == null ? null : orderCode.trim();
    }

    public Integer getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Integer createAt) {
        this.createAt = createAt;
    }
}