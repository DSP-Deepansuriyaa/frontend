package com.niit.bookfront.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class firstcontroller {
	@RequestMapping(value= {"/","/slider"})
	String dispPage(Model m)
	{
		m.addAttribute("indexpage",true);
		return "index";
	}
	
	@RequestMapping("/register")
	String regPage(Model m)
	{
		m.addAttribute("regPage",true);
		return "index";
}
	@RequestMapping("/login")
	String logPage(Model m)
	{
		m.addAttribute("logPage",true);
		return "index";
}
	@RequestMapping("/contactus")
	String conPage(Model m)
	{
		m.addAttribute("conPage",true);
		return "index";
	}
	@RequestMapping("/help")
	String helpPage(Model m)
	{
		m.addAttribute("helpPage",true);
		return "index";
	}
	
}
