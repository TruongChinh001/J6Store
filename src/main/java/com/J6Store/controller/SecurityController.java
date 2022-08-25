package com.J6Store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("security")
public class SecurityController {

	@RequestMapping("/login/form")
	public String loginForm(Model model) {
		model.addAttribute("message", "Vui lòng đăng nhập!");
		return "security/login";
	}
	
	@RequestMapping("/login/success")
	public String loginSuccess(Model model) {
		model.addAttribute("message", "Đăng nhập thành công!");
		return "security/login";
	}
	
	@RequestMapping("/login/error")
	public String loginError(Model model) {
		model.addAttribute("message", "Sai thông tin đăng nhập");
		return "security/login";
	}
	
	@RequestMapping("/unauthorized")
	public String unauthoried(Model model) {
		model.addAttribute("message", "Không có quyền truy xuất!");
		return "security/login";
	}
	
	@RequestMapping("/logoff/success")
	public String logoffSuccess(Model model) {
		model.addAttribute("message", "Đăng xuất thành công!");
		return "security/login";
	}
	
}
