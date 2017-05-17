package com.jinhui_admin.controller;

import com.jinhui.service.RechargeService;
import com.jinhui.vo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by zong on 2017/4/22.
 */
@Controller
public class RechargeController {
    @Autowired
    private RechargeService rechargeService;
    @RequestMapping("/recharge")
    @ResponseBody
    public Result recharge(String phoneNum,Integer money){
        return rechargeService.recharge(phoneNum,money);
    }
}
