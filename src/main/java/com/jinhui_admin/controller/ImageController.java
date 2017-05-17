package com.jinhui_admin.controller;

import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jinhui.service.ImageService;
import com.jinhui.utils.JsonUtils;

@Controller
public class ImageController {
	
	@Autowired
	private ImageService imageService;
	@RequestMapping("/pic/upload")
	@ResponseBody
	public String picUpload(MultipartFile uploadFile,HttpServletRequest request){
		String contextPath=request.getContextPath();
		String servletPath=request.getServletPath();
		String host=request.getRemoteHost();
		String realPath=request.getSession().getServletContext().getRealPath("/");
		String path=request.getRealPath("/image");
		Map result = imageService.uploadPicture(uploadFile,path);
		return JsonUtils.objectToJson(result);
	}
}
