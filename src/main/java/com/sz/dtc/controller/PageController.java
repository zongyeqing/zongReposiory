package com.sz.dtc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 宗叶青 on 2017/5/17.
 */
@Controller
@RequestMapping("/page")
public class PageController {
    @RequestMapping("/{page}")
    public String page(@PathVariable String page){
        return page;
    }
}
