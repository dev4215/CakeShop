package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.Dao.CustomerOrderDao;
import com.niit.model.CustomerOrder;

@Controller
public class CustomerOrderController 
{
	@Autowired
	CustomerOrderDao customerorderdao;
	
	
	@GetMapping("/orderinformation")
	public String viewOrderinfo(Model model) {
		List<CustomerOrder> orderList = customerorderdao.getAllCustomerOrders();
		model.addAttribute("allOrders", orderList);
		model.addAttribute("customerorder", new CustomerOrder());
        return "orderInformation";
	}
	@PostMapping("/order/add")
	public String addOrders(@ModelAttribute ("order") CustomerOrder customerorder, Model model)
	{
		model.addAttribute("order", customerorder);
		customerorderdao.addCustomerOrder(customerorder);
		return "orderSuccess";
	}
	@RequestMapping(value="/order/orderinformation", method = RequestMethod.GET)
	public String success(@ModelAttribute ("order") CustomerOrder customerorder)
	{
		
		return "redirect:/orderinformation";
	}
	@GetMapping("/viewOrder/{orderId}")
	public String displayOrder(@PathVariable("orderId") int orderId,Model model)
	{
		CustomerOrder customerorder= customerorderdao.getCustomerOrderById(orderId);
		model.addAttribute("customerorder", customerorder);
		return "displayOrder";
	}
	@GetMapping("/deleteOrder/{orderId}")
	public String deleteOrder(@PathVariable("orderId") int orderId)
	{
		CustomerOrder customerorder=customerorderdao.getCustomerOrderById(orderId);
		customerorderdao.deleteCustomerOrder(customerorder);
		return "redirect:/orderinformation";
	}
	@GetMapping("/updateOrder/{orderId}")
	public String updateOrder(@PathVariable("orderId") int orderId, Model model) 
	{
		CustomerOrder customerorder=customerorderdao.getCustomerOrderById(orderId);
		model.addAttribute("customerorder", customerorder);
		return "orderInformation";
	}
	@GetMapping("/orderinfo")
	public String orderList(Model model) {
		List<CustomerOrder> orderList = customerorderdao.getAllCustomerOrders();
		model.addAttribute("allOrders", orderList);
		return "ACustomerOrderDetails";
	}


}
