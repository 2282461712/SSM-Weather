package com.service;

import com.entity.AirIndex;
import com.entity.District;
import com.entity.Page;

import java.util.List;

public interface AirIndexService {

    /**
     * 查询所有空气质量信息
     */
    public Page getAirIndexs(int district, int currentPage,int pageSize);

    /**
     * 添加空气质量信息
     */
    public int addAirIndex(AirIndex airIndex);

    /**
     * 通过id 查询空气质量信息
     */
    public AirIndex getAirIndexById(int id);

    /**
     * 通过id ,修改信息
     */
    public int modifyAirIndexById(AirIndex airIndex);

    /**
     * 通过id ,删除信息
     */
    public int removeAirIndexById(int id);
}
