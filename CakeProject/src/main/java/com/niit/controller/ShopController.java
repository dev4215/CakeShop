package com.niit.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.niit.Dao.CakeShopDao;
import com.niit.model.CakeShop;


@Controller
public class ShopController {

	@Autowired
	CakeShopDao cakeshopdao;

	@GetMapping("/CakeShopinformation")
	public String viewCakeShopInfo(Model model) {
		List<CakeShop> cakeshopList = cakeshopdao.getAllCakeShops();
		model.addAttribute("allCakeShops", cakeshopList);
		model.addAttribute("cakeshop", new CakeShop());

		return "CakeShopInformation";
	}

	@PostMapping("/CakeShop/add")
	public String addCakeShops(@ModelAttribute("cakeshop") CakeShop cakeshop) {
		cakeshopdao.addCakeShop(cakeshop);
		return "redirect:/CakeShopinformation";
	}
	
	@GetMapping("/viewCakeShop/{shopId}")
	public String displayCakeShop(@PathVariable("shopId") int shopId,Model model) {
		CakeShop cakeshop = cakeshopdao.getCakeShopById(shopId);
		model.addAttribute("cakeshop", cakeshop);
		return "displayCakeShop";
	}
	@GetMapping("/deleteCakeShop/{shopId}")
	public String deleteCakeShop(@PathVariable("shopId") int shopId) {
		CakeShop cakeshop = cakeshopdao.getCakeShopById(shopId);
		cakeshopdao.deleteCakeShop(cakeshop);
		return "redirect:/CakeShopinformation";
	}

	@GetMapping("/updateCakeShop/{shopId}")
	public String updateCakeShop(@PathVariable("shopId") int shopId, Model model) {
		CakeShop cakeshop = cakeshopdao.getCakeShopById(shopId);
		model.addAttribute("cakeshop", cakeshop);
		return "CakeShopInformation";
	}
}
