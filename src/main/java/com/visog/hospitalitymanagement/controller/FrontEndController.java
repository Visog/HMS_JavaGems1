package com.visog.hospitalitymanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class FrontEndController {
	
	@RequestMapping("/index")
	public ModelAndView New() {
		return new ModelAndView("main/index");
	}

}
