package com.capstone.spring.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import com.capstone.spring.model.Song;
import com.capstone.spring.service.SongService;

@Controller
public class SongController {
	
	@Autowired
	private SongService songService;

	//show add song form
	@RequestMapping("/stub-add-song")
	public String addSong(Model m) {
		m.addAttribute("title","Add Song");
		return "stub_song_form";
	}
		
	//handle add song form
	@RequestMapping(value="/handle-stub-form",method=RequestMethod.POST)
	public RedirectView handleSong(@ModelAttribute Song song, HttpServletRequest request) {
		System.out.println(song);
		songService.createSong(song);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/stub_your_toe");
		return redirectView;
	}
}			