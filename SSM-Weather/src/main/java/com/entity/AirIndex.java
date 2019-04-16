package com.entity;

import java.util.Date;

public class AirIndex {

   private int id ;
   private String districtId;
    private Date  monitorTime;
    private int  pm10;
    private int pm25;
    private String  monitorStation;
    private Date  lastModifyTime;

    public AirIndex() {
    }

    public AirIndex(int id, String districtId, Date monitorTime, int pm10, int pm25, String monitorStation, Date lastModifyTime) {
        this.id = id;
        this.districtId = districtId;
        this.monitorTime = monitorTime;
        this.pm10 = pm10;
        this.pm25 = pm25;
        this.monitorStation = monitorStation;
        this.lastModifyTime = lastModifyTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDistrictId() {
        return districtId;
    }

    public void setDistrictId(String districtId) {
        this.districtId = districtId;
    }

    public Date getMonitorTime() {
        return monitorTime;
    }

    public void setMonitorTime(Date monitorTime) {
        this.monitorTime = monitorTime;
    }

    public int getPm10() {
        return pm10;
    }

    public void setPm10(int pm10) {
        this.pm10 = pm10;
    }

    public int getPm25() {
        return pm25;
    }

    public void setPm25(int pm25) {
        this.pm25 = pm25;
    }

    public String getMonitorStation() {
        return monitorStation;
    }

    public void setMonitorStation(String monitorStation) {
        this.monitorStation = monitorStation;
    }

    public Date getLastModifyTime() {
        return lastModifyTime;
    }

    public void setLastModifyTime(Date lastModifyTime) {
        this.lastModifyTime = lastModifyTime;
    }

}
