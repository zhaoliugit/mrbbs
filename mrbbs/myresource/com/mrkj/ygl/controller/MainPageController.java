package com.mrkj.ygl.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.mrkj.ygl.service.MainPageService;

@Controller
public class MainPageController {
	
	@RequestMapping(value="/goMainPage")
	public ModelAndView goMainPage() {
		ModelAndView mav = new ModelAndView("myJSP/mainPage");
		return mav;
	}
	
	@Resource
	MainPageService mps;
	
	@RequestMapping(value="/saveUEditorContent")
	public ModelAndView saveUEditor(HttpServletRequest request,String content,String mainTitle) {
		
		ModelAndView mav = new ModelAndView();
		String mainCreatuser = request.getRemoteAddr();
		int result = mps.saveMainContent(content, mainTitle, mainCreatuser);
		
		if (result==1) {
			mav.setViewName("redirect:/goMainPage");
		}else {
			mav.setViewName("myJSP/error");
		}
		return mav;
	}
}
