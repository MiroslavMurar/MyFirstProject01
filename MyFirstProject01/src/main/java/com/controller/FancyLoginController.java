package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FancyLoginController {

	@RequestMapping("showMyFancyLoginPage")
	public String showMyFancyLoginPage() {
		
		return "fancy-login"; 
	}
	
}
