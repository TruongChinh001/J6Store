package com.J6Store.rest.controller;

import java.util.List;

import com.J6Store.entity.OrderDetail;
import com.J6Store.service.OrderDetailService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin("*")
@RestController
@RequestMapping("rest/details")
public class OrderDetailRestController {

	@Autowired
	OrderDetailService orderDetailService;
	
	@GetMapping()
	public List<OrderDetail> getByOrder(@RequestParam Integer id) {
		return orderDetailService.findByOrder(id);
	}
	
	@GetMapping("/report")
	public List<OrderDetail> getReport(){
		System.out.println(orderDetailService.getReport());
		return orderDetailService.getReport();
	}
	
}
