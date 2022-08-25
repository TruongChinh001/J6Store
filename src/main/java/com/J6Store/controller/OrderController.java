package com.J6Store.controller;

import javax.servlet.http.HttpServletRequest;

import com.J6Store.service.OrderDetailService;
import com.J6Store.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("order")
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	OrderDetailService orderDetailService;

	@RequestMapping("/checkout")
	public String checkout() {
		return "order/checkout";
	}
	
	@RequestMapping("/list")
	public String list(Model model, HttpServletRequest req) {
		String username = req.getRemoteUser();
		model.addAttribute("orders", orderService.findByUsername(username));
		return "order/list";
	}
	
	@RequestMapping("/detail/{id}")
	public String detail(@PathVariable("id") Integer id, Model model) {
		model.addAttribute("order", orderService.findById(id));
		model.addAttribute("totalItem", orderDetailService.totalItem(id));
		model.addAttribute("totalPrice", orderDetailService.totalPrice(id));
		return "order/detail";
	}
	
	@RequestMapping("/detail-admin/{id}")
	public String detailAdmin(@PathVariable("id") Integer id, Model model) {
		model.addAttribute("order", orderService.findById(id));
		return "order/detail_admin";
	}
	
}
