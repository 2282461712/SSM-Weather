package com.service.impl;

import com.dao.DistrictDao;
import com.entity.District;
import com.service.DistrictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DistrictServiceImpl implements DistrictService {

    @Autowired
    private DistrictDao districtDao;

    public List<District> getDistricts(){
        return districtDao.selectDistricts();
    }
}
