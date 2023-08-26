package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.Tourist;
import com.example.demo.repository.TouristRepository;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class TouristController {
	
	@Autowired
	private TouristRepository touristRep;
	
	@PostMapping("/tourist_entry")
	ResponseEntity<String> newTourist(@RequestBody Tourist newTourist)
	{
		touristRep.save(newTourist);
		return ResponseEntity.ok("Data Entered Successfully");
	}
}
