package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.Tour_manager;
import com.example.demo.repository.TourManagerRepository;

 
@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class TourManagerController 
{

	@Autowired
	private TourManagerRepository tmRepo;
	@PostMapping("/tour_manager_entry")
	ResponseEntity<String> newManager(@RequestBody Tour_manager newTour_manager){
		tmRepo.save(newTour_manager);
		return ResponseEntity.ok("data entered successfully");
	}
	
	
	
}
