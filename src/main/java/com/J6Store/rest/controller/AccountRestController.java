package com.J6Store.rest.controller;

import java.util.List;
import java.util.Optional;

import com.J6Store.entity.Account;
import com.J6Store.service.AccountService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin("*")
@RestController
@RequestMapping("rest/accounts")
public class AccountRestController {

	@Autowired
	private AccountService accountService;
	
	@GetMapping("/admin")
	public List<Account> getAccounts(@RequestParam("admin") Optional<Boolean> admin){
		if(admin.orElse(false)) {
			return accountService.getAdminitrators();
		} else {
			return accountService.findAll();
		}
	}
	
	@GetMapping()
	public List<Account> getAll(){
		return accountService.findAll();
	}
	
	@GetMapping("{username}")
	public Account getOne(@PathVariable("username") String username) {
		return accountService.findById(username);
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public Account create(@RequestBody Account account) {
		account.setPassword("123");
		return accountService.create(account);
	}
	
	@RequestMapping(value="{username}", method=RequestMethod.PUT)
	public Account update(@PathVariable("username") String username, @RequestBody Account account) {
		return accountService.update(account);
	}
	
	@RequestMapping(value="{username}", method=RequestMethod.DELETE)
	public void delete(@PathVariable("username") String username) {
		accountService.delete(username);
	}
	
}
