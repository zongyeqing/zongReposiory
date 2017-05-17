package com.jinhui_admin.controller;

import com.jinhui.service.ExcelParseService;
import com.jinhui.vo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * Created by 宗叶青 on 2017/5/11.
 */
@Controller
public class RecordController {
    @Autowired
    private ExcelParseService excelParseService;
    @RequestMapping("/record/import")
    @ResponseBody
    public Result importExcel(MultipartFile excelFile){
        return excelParseService.parseExcel(excelFile);
    }
}
