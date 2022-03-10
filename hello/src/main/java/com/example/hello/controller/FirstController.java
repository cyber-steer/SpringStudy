package com.example.hello.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FirstController {
    @GetMapping("/hi")
    public String helloComponent(Model model){
        model.addAttribute("name","component");
        return "greetings"; // templates/greetings.mustache -> 브라우저로 전송
    }

    @GetMapping("/bye")
    public  String seeYouNext(Model model){
        model.addAttribute("name", "component");
        return "goodbye";
    }
}
