package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.LoginDao;
import com.niit.Dao.RegistrationDao;
import com.niit.model.Login;
import com.niit.model.Registration;
@Controller
public class LoginController 
{
	@Autowired 
	LoginDao loginDao;
	@Autowired
	RegistrationDao registrationDao;
	
	@GetMapping("/LoginPage")
	public String LoginPage(Model model)
	{
		Login login =new Login();
		model.addAttribute("login",login);
		return "Login";
	}

	@PostMapping("/loginProcess")
	public ModelAndView addLoginPage(@ModelAttribute ("login") Login login)
	{
		ModelAndView mav=null;
		boolean user=registrationDao.validateLogin(login);
		if(user){
			mav= new ModelAndView("index1");
		}else{
			mav= new ModelAndView("Login");
			mav.addObject("message","Username or Password Is Wrong!!");
		}

	
		return mav;
	}
} 