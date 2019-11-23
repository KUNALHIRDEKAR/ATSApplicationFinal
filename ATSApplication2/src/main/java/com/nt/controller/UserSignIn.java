package com.nt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nt.command.UserCommand;
import com.nt.entity.UserEntity;
import com.nt.repository.ATSRepository;

/*
 * The purpose of this class is to check and verify userName/email and Pazzword while user
 * SignIn into the application if user's userName/email and Pazzword is valid then return 
 * UserDashBoard otherwise tell to user That userName Or passWord is not valid
 *  
*/@Controller
public class UserSignIn {
	/*
	 * ATSRepository aTSRepository we use to communicate with data base using Spring data jpa
	*/	@Autowired
	ATSRepository aTSRepository;

	/*
	 * userSighIn() cantains @ModelAttribute to get submitted data form jsp page,
	*/@RequestMapping(value = "/userSignIn", method = RequestMethod.POST)
	public String userSignIn(@ModelAttribute("emailAndPassword")UserCommand userCommand,Model model,HttpSession ses)
	{
		UserEntity userEntity=new UserEntity();
		BeanUtils.copyProperties(userCommand, userEntity);
		UserEntity s=aTSRepository.findByEmail(userEntity.getEmail());
		UserCommand userCommand3=new UserCommand();
		BeanUtils.copyProperties(s,userCommand3);
		
		if(s!=null && s.getPazzword().equals(userCommand.getPazzword())) {
			model.addAttribute("userData",userCommand3);
			
			return "userDashboard";
		}
		else
		{
			return "badCredentials";
		}
	}
	
}
