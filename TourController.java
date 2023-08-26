package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.Tour;
import com.example.demo.repository.TourRepository;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class TourController 
{
	@Autowired
	private TourRepository tourRepo;
	
	@PostMapping("/tour_entry")
	ResponseEntity<String> newTours(@RequestBody Tour newTour) {
		tourRepo.save(newTour);
		return ResponseEntity.ok("data entered successfully");

	}
	
	
	
}
