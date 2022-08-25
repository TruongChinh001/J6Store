package com.J6Store.service.impl;

import java.util.List;

import com.J6Store.dao.ProductDAO;
import com.J6Store.entity.Product;
import com.J6Store.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDAO dao;

	@Override
	public List<Product> findAll() {
		return dao.findAll();
	}

	@Override
	public Product findById(Integer id) {
		return dao.findById(id).get();
	}

	@Override
	public List<Product> findByCategoryId(String cid) {
		return dao.findByCategory(cid);
	}

	@Override
	public Product create(Product product) {
		return dao.save(product);
	}

	@Override
	public Product update(Product product) {
		return dao.save(product);
	}

	@Override
	public void delete(Integer id) {
		dao.deleteById(id);
	}

	@Override
	public List<Product> getTop3Prodcuts() {
		return dao.findTop3Products();
	}
	
}
