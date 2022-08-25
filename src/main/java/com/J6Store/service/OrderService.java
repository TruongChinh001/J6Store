package com.J6Store.service;

import java.util.List;

import com.J6Store.entity.Order;
import com.fasterxml.jackson.databind.JsonNode;

public interface OrderService {

	Order create(JsonNode orderData);

	Object findById(Integer id);

	List<Order> findByUsername(String username);

	List<Order> findAll();
	
}
