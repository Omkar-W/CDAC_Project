package com.example.demo.controller;

import javax.transaction.TransactionScoped;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.example.demo.entities.Transaction;
import com.example.demo.repository.TransactionRepository;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class TransactionController {

	@Autowired
	private TransactionRepository transRep;

	@PostMapping("/trans_entry")
	ResponseEntity<String> newTransactions(@RequestBody Transaction newTran) {
		transRep.save(newTran);
		return ResponseEntity.ok("Data Entered Successfully!!");

	}

}
