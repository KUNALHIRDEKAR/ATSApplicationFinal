package com.nt.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.command.UserCommand;
import com.nt.entity.UserEntity;
import com.nt.repository.ATSRepository;
import com.nt.service.ATSService;

@Controller
public class CreateUserController {
	@Autowired
	ATSService aTSService;
	@Autowired
	ATSRepository aTSRepository;

	@RequestMapping("createUser")
	public String createUserPage(Model model) {
		UserCommand userCommand = new UserCommand();
		model.addAttribute("userCommand", userCommand);
		return "createUser";
	}

	@RequestMapping(value = "/saveNewUserField", method = RequestMethod.POST)
	public String saveNewUserField(@ModelAttribute("userCommand") UserCommand userCommand, HttpSession ses,
			Model model) {
		UserEntity userEntity = new UserEntity();

		BeanUtils.copyProperties(userCommand, userEntity);
		UserEntity userEntity2 = aTSService.saveNewUser(userEntity);
		BeanUtils.copyProperties(userEntity2, userCommand);
		model.addAttribute("userCommand", userCommand);
		model.addAttribute("userId", userEntity2.getUserId());
		ses.setAttribute("emailAddrs", userEntity2.getEmail());
		ses.setAttribute("pass", userEntity2.getPazzword());
		return "passChange";
	}

	@RequestMapping(value = "/saveChangedPassword", method = RequestMethod.POST)
	public String changePassword(@ModelAttribute("userCommand") UserCommand userCommand,
			@RequestParam("userId") Integer id, HttpSession ses, Model model) {
		Optional<UserEntity> optional = aTSRepository.findById(id);
		UserCommand userCommand2 = new UserCommand();
		if (optional.isPresent()) {
			UserEntity userEntity = optional.get();
			model.addAttribute("userId",userEntity.getUserId());
			BeanUtils.copyProperties(userEntity, userCommand2);
		}
		if (userCommand2.getEmail().equalsIgnoreCase(userCommand.getEmail())
				&& userCommand2.getPazzword().equals(userCommand.getPazzword())) {
			model.addAttribute("userCmd", userCommand2);
			model.addAttribute("userpwd", userCommand2.getPazzword());
			
			return "unlockAccount";
		} else {
			return "badCredentials";
		}
	}

	@RequestMapping(value = "/confirmAndSavePass", method = RequestMethod.POST)
	public String confirmChangePass(@ModelAttribute("userCmd") UserCommand command, @RequestParam("userId") Integer id,
			HttpSession ses, Model model) {
		
		Optional<UserEntity> optional = aTSRepository.findById(id);
		UserCommand userCommand2 = new UserCommand();
		if (optional.isPresent()) {
			UserEntity userEntity = optional.get();
		if(!command.getNewPazzword().equals(command.getPazzword_confirm())) 
		{ 
			return "unlockAccount";
			};
		userEntity.setPazzword(command.getNewPazzword());
		aTSRepository.save(userEntity);
		UserCommand userCommand3=new UserCommand(); 
		BeanUtils.copyProperties(userEntity, userCommand3);
		model.addAttribute("userData",userCommand3);
			}
		return "userDashboard";
	}
	
}
