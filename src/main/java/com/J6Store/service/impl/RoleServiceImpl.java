package com.J6Store.service.impl;

import java.util.List;

import com.J6Store.dao.RoleDAO;
import com.J6Store.entity.Role;
import com.J6Store.service.RoleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RoleDAO dao;
	
	@Override
	public List<Role> findAll() {
		return dao.findAll();
	}

	@Override
	public Role findById(String string) {
		return dao.findById(string).get();
	}

}
