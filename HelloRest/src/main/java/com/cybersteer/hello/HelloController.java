package com.cybersteer.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

//@RestController
@Controller
public class HelloController {
	@GetMapping("/hello")
	public String hi() {
		return "hello.html";
	}
}
