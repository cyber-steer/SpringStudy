package com.example.hello.controller;

import com.example.hello.dto.ArticleForm;
import com.example.hello.entity.Article;
import com.example.hello.repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ArticleController {

    @Autowired //스프링 부트가 미리 생성해 놓은 객체를 가져다가 자동 연결! 위존주입
    private ArticleRepository articleRepository;

    @GetMapping("/articles/new")
    public String newArticleForm(){
        return "articles/new";
    }

    @PostMapping("/articles/create")
    public String createArticle(ArticleForm form){
        System.out.println(form.toString());

        // 1. DTO를 Entity로 변환
        Article article = form.toEntity();
        System.out.println(article.toString());

        // 2. Repository에게 Entity를 DB안에 저장함
        Article saved = articleRepository.save(article);
        System.out.println(saved.toString());
       return "";
    }
}
