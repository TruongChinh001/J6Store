package com.J6Store.dao;

import java.util.List;

import com.J6Store.entity.Order;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OrderDAO extends JpaRepository<Order, Integer>{

	
	@Query("SELECT o FROM Order o WHERE o.account.username = ?1")
	List<Order> findByUsername(String username);

}
