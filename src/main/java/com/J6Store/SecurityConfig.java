package com.J6Store;

import java.util.NoSuchElementException;
import java.util.stream.Collectors;

import com.J6Store.entity.Account;
import com.J6Store.service.AccountService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	AccountService accountService;
//	@Autowired
//	BCryptPasswordEncoder pe;

	// cơ chế mã hóa mật khẩu
//	@Bean
//	public BCryptPasswordEncoder getPasswordEncoder() {
//		return new BCryptPasswordEncoder();
//	}
	@Bean
    public PasswordEncoder passwordEncoder() {
    	return new BCryptPasswordEncoder();
    }
	
	@Bean
	public HttpFirewall defaultHttpFirewall() {
	    return new DefaultHttpFirewall();
	}

	// cung cấp nguồn dữ liệu đăng nhập
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(username -> {
			try {
				Account user = accountService.findById(username);
				String password = passwordEncoder().encode(user.getPassword());
				String[] roles = user.getAuthorities().stream().map(er -> er.getRole().getId())
						.collect(Collectors.toList()).toArray(new String[0]);
				return User.withUsername(username).password(password).roles(roles).build();
			} catch (NoSuchElementException e) {
				throw new UsernameNotFoundException(username + " not found!");
			}
		});
	}

	// phân quyền sử dụng
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http.authorizeRequests().antMatchers("/order/**").authenticated().antMatchers("/admin/**")
				.hasAnyRole("STAFF", "ADMIN").antMatchers("/rest/authorities").hasRole("ADMIN").anyRequest()
				.permitAll();

		http.formLogin().loginPage("/security/login/form").loginProcessingUrl("/security/login")
				.defaultSuccessUrl("/security/login/success", false).failureUrl("/security/login/error");

		http.rememberMe().tokenValiditySeconds(86400);

		http.exceptionHandling().accessDeniedPage("/security/unauthoried");

		http.logout().logoutUrl("/security/logoff").logoutSuccessUrl("/security/logoff/success");

	}

	// cho phép truy xuất REST API từ bên ngoài (domain khác)
	@Override
	public void configure(WebSecurity web) throws Exception {
		// TODO Auto-generated method stub
		 web.httpFirewall(defaultHttpFirewall());
	}

}
