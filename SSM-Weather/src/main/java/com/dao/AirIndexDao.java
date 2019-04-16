package com.dao;

import com.entity.AirIndex;
import com.entity.District;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AirIndexDao {

    /**
     * 查询所有空气质量信息
     */
    public List<District> selectAirIndexs(@Param("district") int district, @Param("currentPage")int currentPage, @Param("pageSize")int pageSize);

    /**
     * 查询总行数
     */
    public int selectTotalRows();

    /**
     * 添加空气质量信息
     */
    public int insertAirIndex(AirIndex airIndex);

    /**
     * 通过id 查询空气质量信息
     */
    public AirIndex selectAirIndexById(int id);

    /**
     * 通过id ,修改信息
     */
    public int updateAirIndexById(AirIndex airIndex);

    /**
     * 通过id ,删除信息
     */
    public int deleteAirIndexById(int id);
}
