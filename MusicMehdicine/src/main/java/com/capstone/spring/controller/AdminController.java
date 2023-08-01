package com.capstone.spring.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import com.capstone.spring.model.User;
import com.capstone.spring.service.UserService;

@Controller
public class AdminController {
	
	@Autowired
	private UserService userService;

	//show add user form
	@RequestMapping("/add-user")
	public String addUser(Model m) {
		m.addAttribute("title","Add User");
		return "add_user_form";
	}
	
	//handle add user form
	@RequestMapping(value="/handle-user",method=RequestMethod.POST)
	public RedirectView handleUser(@ModelAttribute User user, HttpServletRequest request) {
		System.out.println(user);
		userService.createUser(user);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/admin_crud");
		return redirectView;
	}
		
	//delete handler
	@RequestMapping("/delete/{userId}")
	public RedirectView deleteUser(@PathVariable("userId") int userId, HttpServletRequest request) {
		this.userService.deleteUser(userId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/admin_crud");
		return redirectView;
	}
	
	//update handler
	@RequestMapping("/update/{userId}")
	public String updateForm(@PathVariable("userId") int uid, Model model) {
		User user = this.userService.getUser(uid);
		model.addAttribute("user", user);
		return "update_form";
	}
}			