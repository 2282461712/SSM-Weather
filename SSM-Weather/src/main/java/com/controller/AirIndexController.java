package com.controller;

import com.entity.AirIndex;
import com.entity.Page;
import com.service.AirIndexService;
import com.service.DistrictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AirIndexController {

    @Autowired
    private AirIndexService airIndexService;
    @Autowired
    private DistrictService districtService;

    @RequestMapping("/jsp/airIndexs.do")
    public ModelAndView getAirIndexs(ModelAndView modelAndView,
                                            @RequestParam(value = "district",required = true,defaultValue = "-1") String district,
                                            @RequestParam(value = "currentPage",required = true,defaultValue = "1") String currentPage){
        modelAndView.addObject("page",airIndexService.getAirIndexs(Integer.parseInt(district),Integer.parseInt(currentPage),new Page().getPageSize()));
        modelAndView.addObject("districtList",districtService.getDistricts());
        modelAndView.addObject("districtId",district);
        modelAndView.setViewName("airIndexList");
        return  modelAndView;
    }

    @RequestMapping("/jsp/jumpAddPage.do")
    public ModelAndView toAddPage(ModelAndView modelAndView){
        modelAndView.addObject("districtList",districtService.getDistricts());
        modelAndView.setViewName("addAirIndex");
        return modelAndView;
    }

    @RequestMapping("/jsp/addArirIndex.do")
    public ModelAndView addAirdIndex(ModelAndView modelAndView, AirIndex airIndex){
        //保存数据
        modelAndView.setViewName("forward:/jsp/jumpAddPage.do");
        if(airIndexService.addAirIndex(airIndex)>0){
            modelAndView.setViewName("forward:/jsp/airIndexs.do");
            return  modelAndView;
        }
        return   modelAndView;
    }

    @RequestMapping("/jsp/jumpUpdatePage.do/{id}")
    public  ModelAndView jumpUpdatePage(ModelAndView modelAndView, @PathVariable("id") int id){
        //查询空气质量信息
        modelAndView.addObject("districtList",districtService.getDistricts());
        modelAndView.addObject("airIndex",airIndexService.getAirIndexById(id));
        modelAndView.setViewName("airIndexUpdate");
        return modelAndView;
    }

    @RequestMapping("/jsp/updateArirIndex.do")
    public  ModelAndView modifyAirIndex(ModelAndView modelAndView,AirIndex airIndex){
        //保存修改的信息
        modelAndView.setViewName("forward:airIndexUpdate");
        if(airIndexService.modifyAirIndexById(airIndex)>0){
            modelAndView.setViewName("forward:/jsp/airIndexs.do");
            return  modelAndView;
        }
        return modelAndView;
    }

    @RequestMapping("/jsp/deleteAirIndexs.do")
    public ModelAndView removeAirIndex(ModelAndView modelAndView,int id){
        modelAndView.setViewName("redirect:/jsp/jumpUpdatePage.do/{"+id+"}");
        if(airIndexService.removeAirIndexById(id)>0){
             modelAndView.setViewName("redirect:/jsp/airIndexs.do");
             return modelAndView;
        }
        return modelAndView;
    }
}
