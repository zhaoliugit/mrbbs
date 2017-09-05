package com.mrkj.ygl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Test02Controller {

	
	
	@RequestMapping(value="/goTest02")
	public ModelAndView goTest02() {
		ModelAndView mav = new ModelAndView("myJSP/test02");
		return mav;
	}
}
