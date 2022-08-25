package com.J6Store.service;

import java.util.List;

import com.J6Store.entity.Account;
import com.J6Store.entity.Authority;
import com.J6Store.entity.Role;

public interface AuthorityService {

	List<Authority> findAuthoritiesOfAdminitrators();

	List<Authority> findAll();

	Authority create(Authority auth);

	void delete(Integer id);

	Authority saveNew(Account account, Role role);

}
