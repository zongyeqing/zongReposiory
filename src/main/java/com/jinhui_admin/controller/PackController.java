package com.jinhui_admin.controller;

import com.jinhui.po.Pack;
import com.jinhui.service.PackService;
import com.jinhui.vo.EUDataGridResult;
import com.jinhui.vo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by zong on 2017/4/20.
 */
@Controller
@RequestMapping("/pack")
public class PackController {

    @Autowired
    private PackService packService;
    @RequestMapping("/add")
    @ResponseBody
    public Result addPack(Pack pack){
        Result result= packService.addPack(pack);
        return result;
    }

    //根据套餐id修改套餐信息
    
    @RequestMapping("/update")
    @ResponseBody
    public Result updatePack(Pack pack){
    	return packService.updatePack(pack);
    }

    //根据套餐id查询商品的描述信息
    @RequestMapping("/pack_description")
    @ResponseBody
    public Result findPackById(@RequestParam("id") String packId){
        return packService.findPackById(packId);
    }
    
    //根据商品id下架商品

    @RequestMapping("/list")
    @ResponseBody
    public EUDataGridResult findAllPack(Integer page, Integer rows){
        return packService.findALlPack(page,rows);
    }
    
    //根据号码查询套餐信息
    @RequestMapping("/findByUser")
    @ResponseBody
    public EUDataGridResult findPackByPhone(Integer page, Integer rows,String phoneNum){
        return packService.findPackByPhoneNum(phoneNum);
    }

    @RequestMapping("query")
    @ResponseBody
    public EUDataGridResult findPackByUser(String phoneNum){
        return packService.findPackByPhoneNum(phoneNum);
    }
}