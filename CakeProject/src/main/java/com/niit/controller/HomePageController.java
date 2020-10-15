package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomePageController
{
	@GetMapping("/")
	public String indexPage() {
		
		return "index1";
	}
	
	@GetMapping("/Customerlogin")
	public String CustomerloginPage() {
		
		return "Customerlogin";
	}

	@GetMapping("/aboutus")
	public String aboutPage() {
		
		return "aboutus";
	}

	@GetMapping("/AdminMenu")
	public String adminMenupage() {
		
		return "AdminMenu";
	}

	@GetMapping("/gallery")
	public String galleryPage() {
		
		return "gallery";
	}
	

}
