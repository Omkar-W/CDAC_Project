package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.TravelerBooking;
import com.example.demo.repository.TravelerBookingRepository;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class TravelerBookingController {
	@Autowired
	private TravelerBookingRepository traveRepo;

	@PostMapping("/travebook_entry")
	ResponseEntity<String> newTravelBook(@RequestBody TravelerBooking newTravelBoo) {
		traveRepo.save(newTravelBoo);
		return ResponseEntity.ok("data entered successfully");

	}

}
