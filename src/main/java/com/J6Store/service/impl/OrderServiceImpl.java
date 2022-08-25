package com.J6Store.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import com.J6Store.dao.OrderDAO;
import com.J6Store.dao.OrderDetailDAO;
import com.J6Store.entity.Order;
import com.J6Store.entity.OrderDetail;
import com.J6Store.service.OrderService;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService{

	
	@Autowired
	OrderDAO dao;
	
	@Autowired
	OrderDetailDAO orderDetailDao;
	
	@Override
	public Order create(JsonNode orderData) {
		ObjectMapper mapper = new ObjectMapper();
		
		Order order = mapper.convertValue(orderData, Order.class);
		dao.save(order);
		
		TypeReference<List<OrderDetail>> type = new TypeReference<List<OrderDetail>>() {
			
		};
		
		List<OrderDetail> details = mapper.convertValue(orderData.get("orderDetails"), type)
				.stream()
				.peek(d -> d.setOrder(order))
				.collect(Collectors.toList());
		
		orderDetailDao.saveAll(details);
		
		return order;
	}

	@Override
	public Object findById(Integer id) {
		return dao.findById(id).get();
	}

	@Override
	public List<Order> findByUsername(String username) {
		return dao.findByUsername(username);
	}

	@Override
	public List<Order> findAll() {
		return dao.findAll();
	}

}
