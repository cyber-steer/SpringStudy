package com.cybersteer.hello;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
//@Controller
public class HelloController {
	@GetMapping("/hello")
//	public String hi(Model model) {
//        Random random = new Random();
//        model.addAttribute("myValue", "안녕! 이건 스프링 부트입니다! " + random.nextInt());
//		return "hello";
//	}
	public String hi() {
		return "<h1>test</h1>";
	}
}
