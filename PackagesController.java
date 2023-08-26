package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.Packages;
import com.example.demo.repository.PackageRepository;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class PackagesController {

	@Autowired
	private PackageRepository packRep;

	@PostMapping("/package_entry")
	ResponseEntity<String> newPackages(@RequestBody Packages newPack) {
		packRep.save(newPack);
		return ResponseEntity.ok("data entered successfully");

	}

}
