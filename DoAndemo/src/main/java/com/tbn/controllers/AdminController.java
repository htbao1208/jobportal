/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.controllers;

import com.tbn.service.UserService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author kid03
 */
@Controller
@ControllerAdvice
public class AdminController {
    
    @Autowired
    private UserService userService;
    
    
    @GetMapping("/admin")
    public String admin(){
        return "admin";
    }
//    @GetMapping("/admin/user")
//    public String userView(Model model){
//        return"userreport";
//    }
    
    @GetMapping("/admin/user")
    public String search(Model model, @RequestParam(required = false) Map<String, String> params){
        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("user", this.userService.getUsersByUserRole(kw, page));
        
        model.addAttribute("userC", this.userService.countUser());
        return "userreport";
    }
    @RequestMapping("/admin/usershow")
    public void show(Model model, @PathVariable(value = "uId") int uId){
        model.addAttribute("userS", this.userService.getUserById(uId));
    }
}
