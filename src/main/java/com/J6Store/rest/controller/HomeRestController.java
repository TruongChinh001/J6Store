package com.J6Store.rest.controller;

import javax.servlet.http.HttpServletRequest;

import com.J6Store.entity.Account;
import com.J6Store.service.AccountService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/remote")
public class HomeRestController {

	@Autowired
	private AccountService accountService;
	
	@GetMapping()
	public Account getRemoteUser(HttpServletRequest req) {
		String user = req.getRemoteUser();
		Account account = accountService.findById(user);
		return account;
	}
	
}
