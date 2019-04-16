package com.dao;

import com.entity.District;

import java.util.List;

public interface DistrictDao {

    /**
     * 查询所有城区
     */
    public List<District> selectDistricts();
}
