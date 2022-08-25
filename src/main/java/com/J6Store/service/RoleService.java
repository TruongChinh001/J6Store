package com.J6Store.service;

import java.util.List;

import com.J6Store.entity.Role;

public interface RoleService {

	List<Role> findAll();

	Role findById(String string);

}
