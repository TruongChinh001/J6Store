package com.J6Store.service;

import java.util.List;

import com.J6Store.entity.OrderDetail;

public interface OrderDetailService {

	List<OrderDetail> findByOrder(Integer order);

	Integer totalItem(Integer order);

	Double totalPrice(Integer id);

	List<OrderDetail> getReport();
	

}
