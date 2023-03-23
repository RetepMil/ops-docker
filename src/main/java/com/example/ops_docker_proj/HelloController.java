package com.example.ops_docker_proj;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	@Value("${server.port}")
    private Integer serverPort;

	@Value("${message}")
    private String message;

	@GetMapping("/hello")
	public ResponseEntity<String> hello() {
		return ResponseEntity.ok().body(message + "listening on " + serverPort.toString());
	}

}