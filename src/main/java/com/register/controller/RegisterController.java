package com.register.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.register.model.User;
import com.register.service.UserService;

@Controller
public class RegisterController {
	
	@Autowired
	public UserService userService;
	
	@RequestMapping("/")
	public String registerForm(){
		return "index";
	}
	
	@RequestMapping(path = "/processform",method = RequestMethod.POST)
	public String processForm(@ModelAttribute("user")User user,BindingResult result) {
		
		if(result.hasErrors()) {
			return "error";
		}
		userService.insert(user);
		return "success";
	}
	
	@RequestMapping("/allusers")
	public String showUsers(Model model) {
		List<User> users = userService.getAll();
		model.addAttribute("users", users);
		return "allusers";
	}
	
	@RequestMapping("/delete/{id}")
	public RedirectView deleteForm(@PathVariable("id")int id,RedirectView view) {
		userService.delete(id);
		view.setUrl("/Register/allusers");
		return view;
	}
	
	@RequestMapping("/update/{id}")
	public String updateForm(@PathVariable("id")int id,Model model) {
		User user = userService.get(id);
		model.addAttribute(user);
		return "update";
	}
	
	@RequestMapping(path = "/updateprocess",method = RequestMethod.POST)
	public RedirectView updatedUser(@ModelAttribute("user")User user,RedirectView view) {
		userService.update(user);
		view.setUrl("/Register/allusers");
		return view;
	}
}
