package com.nt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nt.command.UserCommand;
@Controller
public class ATSController {
	@RequestMapping("/getHomePage")
	public String getHomePage(Model model) 
	{
		UserCommand userCommand=new UserCommand();
		model.addAttribute("emailAndPassword",userCommand);
 		return "home";		
	}
	


}
