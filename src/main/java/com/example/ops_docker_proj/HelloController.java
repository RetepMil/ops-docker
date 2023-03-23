package com.example.ops_docker_proj;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
	@GetMapping("/hello")
	public ResponseEntity<String> hello() {
		String message = System.getProperty("spring.profiles.active");
		return ResponseEntity.ok(message);
	}

}