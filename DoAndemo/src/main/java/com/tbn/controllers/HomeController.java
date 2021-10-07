/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.controllers;


import com.tbn.service.JobPostService;
import com.tbn.service.UserService;
import java.util.Map;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;


/**
 *
 * @author ADMINIS
 */
@Controller
@ControllerAdvice
public class HomeController {
//    @Autowired
//    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private UserService userService;
    @Autowired
    private JobPostService jobPostService;
    
    
    @GetMapping("/")
    public String index(Model model){
//        model.addAttribute("name", "Bao Ngan");
//        Session s = sessionFactory.getObject().getCurrentSession();
        
       // s.close();
        
        return "index";
    }

    
    @ModelAttribute
    public void commonAttr(Model model, HttpSession session){
        model.addAttribute("tai_khoan_nguoi_dung", session.getAttribute("currentUser"));
    }
    
//    @RequestMapping("/search")
//    public String search(Model model){
//        return "searchJob";
//    }
    
    @GetMapping("/search")
    public String search(Model model, @RequestParam(required = false) Map<String, String> params){
        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("jobType", this.jobPostService.getJobPosts(kw, page));
        
        model.addAttribute("jCounter", this.jobPostService.countPost());
        return "searchJob";
    }
}
