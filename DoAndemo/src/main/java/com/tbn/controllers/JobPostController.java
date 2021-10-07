/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.controllers;


import com.tbn.pojos.JobPost;
import com.tbn.service.CareerService;
import com.tbn.service.JobPostService;
import com.tbn.service.JobTypeService;
import com.tbn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 *
 * @author kid03
 */
@Controller
@ControllerAdvice
public class JobPostController {
    @Autowired
    private CareerService careerService;
    @Autowired
    private JobTypeService jobTypeService;
    @Autowired
    private JobPostService jobPostService;
    
    private UserService userService;
    
    @ModelAttribute
    public void commonAttr(Model model){
        model.addAttribute("career", this.careerService.getCareers());
        model.addAttribute("jtype", this.jobTypeService.getJobTypes());
    }
    
    @RequestMapping("/company")
    public String home(){
        return "homeComp";
    }
    @GetMapping("/company/post")
    public String jobPostView(Model model){
        model.addAttribute("jPost", new JobPost());
        return "postComp";
    }
    
    @PostMapping("/company/post")
    public String addJobPost(@ModelAttribute(value = "jPost") JobPost jobpost){
        if(this.jobPostService.addJobPostOrUpdate(jobpost) == true)
            return "homeComp";
        else
            return "postComp";
                    
    }
    
    @GetMapping("/post/{jobPostId}")
    public String detail(Model model,@PathVariable(value = "jobPostId") int jobPostId){
        model.addAttribute("jPost", this.jobPostService.getJobPostById(jobPostId));
        return "postdetail";
    }

}
