package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.Login;
import com.example.demo.entities.LoginCheck;
import com.example.demo.services.LoginServices;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
public class LoginController 
{
	@Autowired
	LoginServices lservice;
	
	@PostMapping("/chkLogin")
	//public Login chkLogin(@RequestBody LoginCheck lCheck)
	public Login chkLogin(@RequestBody LoginCheck lCheck)
	{
		return lservice.getLogin(lCheck.getUsername(), lCheck.getPassword());
	}

}


//cross orgion