package com.J6Store.service.impl;

import java.util.List;

import com.J6Store.dao.OrderDetailDAO;
import com.J6Store.entity.OrderDetail;
import com.J6Store.service.OrderDetailService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderDetailServiceImpl implements OrderDetailService{

	@Autowired
	private OrderDetailDAO dao;
	
	@Override
	public List<OrderDetail> findByOrder(Integer order) {
		return dao.findByOrder(order);
	}

	@Override
	public Integer totalItem(Integer order) {
		return dao.totalItem(order);
	}

	@Override
	public Double totalPrice(Integer id) {
		return dao.totalPrice(id);
	}

	@Override
	public List<OrderDetail> getReport() {
		return dao.getReport();
	}

}
