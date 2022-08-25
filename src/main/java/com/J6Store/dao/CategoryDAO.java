package com.J6Store.dao;

import java.util.List;

import com.J6Store.entity.Category;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CategoryDAO extends JpaRepository<Category, String>{
	
//	@Query("SELECT TOP 3 p.category.id FROM Product p "
//			+ "INNER JOIN Category c "
//			+ "ON p.category.id = c.id "
//			+ "WHERE p.category.id IN (SELECT o.product.id FROM OrderDetail o) "
//			+ "GROUP BY p.category.id "
//			+ "ORDER BY COUNT(p.category.id)")
//	List<Category> findTop3Categories();
	
	@Query(value = "SELECT TOP 3 c.id, c.name, c.image FROM Categories c "
			+ "	INNER JOIN Products p "
			+ "	ON c.Id = p.Category_id "
			+ "	WHERE p.id IN (SELECT Product_id FROM Order_details) "
			+ "	GROUP BY c.Id, c.Name, c.Image "
			+ "	ORDER BY COUNT(p.Category_id) DESC", nativeQuery = true)
	List<Category> findTop3Categories();
	
}
