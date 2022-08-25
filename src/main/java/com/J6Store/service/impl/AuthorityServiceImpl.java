package com.J6Store.service.impl;

import java.util.List;

import com.J6Store.dao.AccountDAO;
import com.J6Store.dao.AuthorityDAO;
import com.J6Store.entity.Account;
import com.J6Store.entity.Authority;
import com.J6Store.entity.Role;
import com.J6Store.service.AuthorityService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthorityServiceImpl implements AuthorityService{

	@Autowired
	private AuthorityDAO dao;
	
	@Autowired
	private AccountDAO accountDao;
	
	@Override
	public List<Authority> findAuthoritiesOfAdminitrators() {
		List<Account> accounts = accountDao.getAdminitrators();
		return dao.authoritiesOf(accounts);
	}

	@Override
	public List<Authority> findAll() {
		return dao.findAll();
	}

	@Override
	public Authority create(Authority auth) {
		return dao.save(auth);
	}

	@Override
	public void delete(Integer id) {
		dao.deleteById(id);
	}

	@Override
	public Authority saveNew(Account account, Role role) {
		Authority auth = new Authority();
		auth.setAccount(account);
		auth.setRole(role);
		return dao.save(auth);
	}

}
