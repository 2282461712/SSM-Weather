package com.service.impl;

import com.dao.AirIndexDao;
import com.entity.AirIndex;
import com.entity.Page;
import com.service.AirIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AirIndexServiceImpl implements AirIndexService {

    @Autowired
    private AirIndexDao airIndexDao;

    public Page getAirIndexs(int district, int currentPage,int pageSize) {
        Page page=new Page();
        page.setTotalRows(airIndexDao.selectTotalRows());
        page.setTotalPage((page.getTotalRows()+pageSize-1)/pageSize);
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        page.setDistrictList(airIndexDao.selectAirIndexs(district,(currentPage-1)*pageSize,pageSize));
        return page;
    }

    public int addAirIndex(AirIndex airIndex){
        return airIndexDao.insertAirIndex(airIndex);
    }

    public AirIndex getAirIndexById(int id){
        return airIndexDao.selectAirIndexById(id);
    }

    public int modifyAirIndexById(AirIndex airIndex){
        return  airIndexDao.updateAirIndexById(airIndex);
    }

    public int removeAirIndexById(int id){
       return airIndexDao.deleteAirIndexById(id);
    }
}
