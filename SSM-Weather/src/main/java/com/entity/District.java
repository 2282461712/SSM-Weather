package com.entity;

import java.util.List;

public class District {

   private int id;
   private String name;
   private List<AirIndex> airIndexList;

    public District() {
    }

    public District(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public List<AirIndex> getAirIndexList() {
        return airIndexList;
    }

    public void setAirIndexList(List<AirIndex> airIndexList) {
        this.airIndexList = airIndexList;
    }

}
