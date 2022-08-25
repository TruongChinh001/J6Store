package com.J6Store.service.impl;

import java.util.List;

import com.J6Store.dao.CategoryDAO;
import com.J6Store.entity.Category;
import com.J6Store.service.CategoryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	CategoryDAO dao;
	
	@Override
	public List<Category> findAll() {
		return dao.findAll();
	}

	@Override
	public Category findById(String id) {
		return dao.findById(id).get();
	}

	@Override
	public Category create(Category category) {
		return dao.save(category);
	}

	@Override
	public Category update(Category category) {
		return dao.save(category);
	}

	@Override
	public void delete(String id) {
		dao.deleteById(id);
	}

	@Override
	public List<Category> getTop3Categories() {
		return dao.findTop3Categories();
	}

}
