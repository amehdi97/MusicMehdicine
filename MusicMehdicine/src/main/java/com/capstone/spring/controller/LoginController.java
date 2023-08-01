package com.capstone.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.capstone.spring.model.User;
import com.capstone.spring.service.UserService;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView showLoginForm() {
        ModelAndView modelAndView = new ModelAndView("login");
        modelAndView.addObject("user", new User());
        return modelAndView;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView processLoginForm(@ModelAttribute("user") User user,
                                          HttpServletRequest request,
                                          HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView();

        User existingUser = userService.getUserByEmail(user.getEmail());

        if (existingUser != null && existingUser.getPassword().equals(user.getPassword())) {
            HttpSession session = request.getSession();
            session.setAttribute("user", existingUser);
            modelAndView.setViewName("redirect:/home");
        } else {
            modelAndView.addObject("error", "Invalid email/password combination");
            modelAndView.setViewName("login");
        }

        return modelAndView;
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        return "redirect:/";
    }
}
