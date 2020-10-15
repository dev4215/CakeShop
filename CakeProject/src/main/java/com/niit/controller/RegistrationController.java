package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.niit.Dao.RegistrationDao;
import com.niit.model.Registration;


@Controller
public class RegistrationController
{
	@Autowired 
	RegistrationDao registrationDao;
	
	@GetMapping("/registration")
	public String RegistrationPage(Model model)
	{
		Registration registration= new Registration();
		model.addAttribute("registration",registration);
		return "registration";
	}
	@PostMapping("/user/add")
	public String addUser(@ModelAttribute ("registration") Registration registration)
	{
		registrationDao.addUser(registration);
		return "redirect:/registration";
	}

}
