package com.jinhui_admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zong on 2017/4/20.
 */
@Controller
public class PageController {
    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("/{page}")
    public String page(@PathVariable String page){
        return page;
    }
}
