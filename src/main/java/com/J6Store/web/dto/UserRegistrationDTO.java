package com.J6Store.web.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserRegistrationDTO {

	private String username;
	private String password;
	private String fullname;
	private String email;
	private String photo;
	
}
