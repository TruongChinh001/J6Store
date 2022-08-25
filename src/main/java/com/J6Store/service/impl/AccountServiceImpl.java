package com.J6Store.service.impl;

import java.util.List;

import com.J6Store.dao.AccountDAO;
import com.J6Store.entity.Account;
import com.J6Store.service.AccountService;
import com.J6Store.web.dto.UserRegistrationDTO;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements AccountService{

	@Autowired
	private AccountDAO dao;
	
	@Autowired
	private ModelMapper mapper;
	
	PasswordEncoder passwordEncoder;
	
	@Override
	public Account findById(String username) {
		return dao.findById(username).get();
	}
	
//	public Account save(Account account) {
//		String encodedPassword = this.passwordEncoder.encode(account.getPassword());
//		account.setPassword(encodedPassword);
//		return this.dao.save(account);
//	}

	@Override
	public Account convertToEntity(UserRegistrationDTO userRegistrationDTO) {
		return mapper.map(userRegistrationDTO, Account.class);
	}

	@Override
	public Account save(Account account) {
//		System.out.println(account.getPassword());
//		String encodedPassword = String.valueOf(passwordEncoder.encode(account.getPassword()));
//		account.setPassword(encodedPassword);
//		System.out.println(encodedPassword);
		return dao.save(account);
	}

	@Override
	public List<Account> getAdminitrators() {
		return dao.getAdminitrators();
	}

	@Override
	public List<Account> findAll() {
		return dao.findAll();
	}

	@Override
	public Account create(Account account) {
		return dao.save(account);
	}

	@Override
	public Account update(Account account) {
		return dao.save(account);
	}

	@Override
	public void delete(String username) {
		dao.deleteById(username);
	}

}
