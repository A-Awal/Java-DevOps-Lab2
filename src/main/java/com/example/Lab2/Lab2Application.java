package com.example.Lab2;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Lab2Application {

	@GetMapping("test")
	public String GetResult(){
		return "Hello moto";
	}
	public static void main(String[] args) {
		SpringApplication.run(Lab2Application.class, args);
	}

}
