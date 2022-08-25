package com.J6Store.dao;

import java.util.List;

import com.J6Store.entity.Product;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ProductDAO extends JpaRepository<Product, Integer>{

	@Query("SELECT p FROM Product p WHERE p.category.id = ?1")
	List<Product> findByCategory(String cid);

	
	@Query(value = "SELECT TOP 3 p.id, p.Name, p.Image, p.Price, p.Create_date, p.Available, p.Category_id, p.Description, COUNT(od.Product_id) FROM Products p "
			+ "INNER JOIN Order_details od "
			+ "ON p.id = od.Product_id "
			+ "GROUP BY p.id, p.Name, p.Image, p.Price, p.Create_date, p.Available, p.Category_id, p.Description "
			+ "ORDER BY COUNT(od.Product_id) DESC ", nativeQuery = true)
	List<Product> findTop3Products();

}
