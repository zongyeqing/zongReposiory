package com.jinhui_admin.controller;

import com.jinhui.exception.MyException;
import com.jinhui.service.FareService;
import com.jinhui.vo.EUDataGridResult;
import com.jinhui.vo.Result;
import com.jinhui.vo.SummaryExtend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Calendar;

/**
 * Created by zong on 2017/4/22.
 */
@Controller
@RequestMapping("/fare")
public class FareController {

    @Autowired
    FareService fareService;
    //月话费记录查询
    @RequestMapping("/summary")
    @ResponseBody
    public EUDataGridResult findFareSummary(@RequestParam(defaultValue = "1",required = true) Integer page,
                                            @RequestParam(defaultValue = "30",required = true) Integer rows,
                                            Integer year,
                                            Integer month) {
        Calendar cal=Calendar.getInstance();
        if(year==null){
            year=cal.get(Calendar.YEAR);
        }
        if(month==null){
            month=cal.get(Calendar.MONTH)+1;
        }

        return fareService.findFareSummaryByMonth(page,rows,year,month);
    }

    //更新个人使用记录统一到到月记录表
    @RequestMapping("/refresh")
    @ResponseBody
    public EUDataGridResult refresh(){
        try{
            return  fareService.refreshAllFareSummary();
        }catch (MyException e){
            System.out.println(e.getMessage());
        }
        return new EUDataGridResult();
    }

    @RequestMapping("/userSummay")
    @ResponseBody
    public EUDataGridResult findSummaryByUserAndMonth(String phoneNum, Integer year,  Integer month,Model model){
        if(phoneNum==null){
            return null;
        }
        Calendar cal=Calendar.getInstance();
        if(year==null){
            year=cal.get(Calendar.YEAR);
        }
        if(month==null){
            month=cal.get(Calendar.MONTH)+1;
        }
        return fareService.findSummaryByUserAndMonth(phoneNum,year,month);
      
    }

}
