package com.J6Store.service;

import java.util.List;

import com.J6Store.entity.Account;
import com.J6Store.web.dto.UserRegistrationDTO;

public interface AccountService {
	
	Account findById(String username);
	
	Account save(Account account);
	
	Account convertToEntity(UserRegistrationDTO userRegistrationDTO);

	List<Account> getAdminitrators();

	List<Account> findAll();

	Account create(Account account);

	Account update(Account account);

	void delete(String username);
	
}
