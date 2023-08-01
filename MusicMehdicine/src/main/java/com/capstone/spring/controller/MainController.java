package com.capstone.spring.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import com.capstone.spring.model.Song;
import com.capstone.spring.model.User;
import com.capstone.spring.service.SongService;
import com.capstone.spring.service.UserService;

@Controller
public class MainController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private SongService songService;

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/admin_crud")
	public String admin_crud(Model m) {
		
		List<User> users = userService.getUsers();
		m.addAttribute("users",users);
		return "admin_crud";
	}
	
	@RequestMapping("/stub_your_toe")
	public String stub(Model m) {
		List<Song> songs = songService.getSongsByPlist("Stub Your Toe");
		m.addAttribute("songs", songs);
		return "stub_your_toe";
	}
	
	@RequestMapping("/heartbreak")
	public String heart(Model m) {
		List<Song> songs = songService.getSongsByPlist("Heartbreak");
		m.addAttribute("songs", songs);
		return "heartbreak";
	}
	
	@RequestMapping("/shower_jams")
	public String jams(Model m) {
		List<Song> songs = songService.getSongsByPlist("Shower Jams");
		m.addAttribute("songs", songs);
		return "shower_jams";
	}
	
	//handle register user form
	@RequestMapping(value="/register-user",method=RequestMethod.POST)
	public RedirectView registerUser(@ModelAttribute User user, HttpServletRequest request) {
		System.out.println(user);
		userService.createUser(user);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/login");
		return redirectView;
		}
}
