package com.J6Store.web.controller;

import com.J6Store.entity.Account;
import com.J6Store.entity.Role;
import com.J6Store.service.AccountService;
import com.J6Store.service.AuthorityService;
import com.J6Store.service.RoleService;
import com.J6Store.web.dto.UserRegistrationDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/j6store")
public class RegistrationController {
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private AuthorityService authService;
	
	@Autowired
	private RoleService roleService;
	
	@GetMapping("/register")
	public String registerForm(Model model) {
		model.addAttribute("user", new UserRegistrationDTO());
		return "account/register";
	}
	
	@PostMapping("/register")
	public String registesUserAccount(Model model, @ModelAttribute("user") UserRegistrationDTO registrationDto) {
		Account account = accountService.convertToEntity(registrationDto);
		accountService.save(account);
		Account accountSaved = accountService.findById(account.getUsername());
		Role roleDefault = roleService.findById("GUEST");
		authService.saveNew(accountSaved, roleDefault);
		model.addAttribute("message", "Đăng ký thành công!");
		return "account/register";
	}
	
}
