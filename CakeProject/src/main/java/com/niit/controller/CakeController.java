package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.niit.Dao.CakeDao;
import com.niit.model.Cake;

@Controller
public class CakeController 
{
	@Autowired
	CakeDao cakedao;
	
	@GetMapping("/cakeinformation")
	public String viewCakeInfo(Model model) {
		List<Cake> cakeList = cakedao.getAllCakes();
		model.addAttribute("allCakes",cakeList);
		model.addAttribute("cake",new Cake());
        return "cakeInformation";
	}
	@PostMapping("/cake/add")
	public String addCakes(@ModelAttribute ("cake") Cake cake)
	{
		cakedao.addCake(cake);
		return "redirect:/cakeinformation";
	}
	@GetMapping("/viewCake/{cakeId}")
	public String displayCake(@PathVariable("cakeId") int cakeId,Model model)
	{
		Cake cake=cakedao.getCakeById(cakeId);
		model.addAttribute("cake", cake);
		return "displayCake";
	}
	@GetMapping("/delete/{cakeId}")
	public String deleteCake(@PathVariable("cakeId") int cakeId)
	{
		Cake cake=cakedao.getCakeById(cakeId);
		cakedao.deleteCake(cake);
		return "redirect:/cakeinformation";
	}

	@GetMapping("/update/{cakeId}")
	public String updateCake(@PathVariable("cakeId") int cakeId, Model model) 
	{
		Cake cake= cakedao.getCakeById(cakeId);
		model.addAttribute("cake", cake);
	
		return "cakeInformation";
	}
	

}
