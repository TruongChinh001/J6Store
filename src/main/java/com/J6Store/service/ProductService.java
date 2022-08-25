package com.J6Store.service;

import java.util.List;

import com.J6Store.entity.Product;

public interface ProductService {

	List<Product> findAll();

	Product findById(Integer id);

	List<Product> findByCategoryId(String cid);

	Product create(Product product);

	Product update(Product product);

	void delete(Integer id);

	List<Product> getTop3Prodcuts();

}
