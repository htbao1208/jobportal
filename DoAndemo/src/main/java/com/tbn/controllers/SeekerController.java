/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tbn.controllers;

import com.tbn.pojos.Infor;
import com.tbn.pojos.LevelDetail;
import com.tbn.pojos.User;

import com.tbn.service.InforService;
import com.tbn.service.LevelService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author kid03
 */
@Controller
@ControllerAdvice
public class SeekerController {
    @Autowired
    private InforService inforService;
    @Autowired
    private LevelService levelService;

    @ModelAttribute
    public void commonAttr(Model model){
        model.addAttribute("level", this.levelService.getLevels());
    }

    
    @GetMapping("/seeker/profile")
    public String List (Model model){
        model.addAttribute("infor", new Infor());
        return "seeker-profile";
    }
    
    @PostMapping("/seeker/profile")
    public String addInfor (@ModelAttribute(value = "infor") Infor infor){
        if(this.inforService.addInfor(infor) == true)
            return "redirect:/seeker/profile";
        else
            return "seeker-profile";    
    }
    
    @GetMapping("/seeker/profile-level")
    public String levelView(Model model, HttpSession session){
        model.addAttribute("levelDetail", new LevelDetail());
        User user = (User) session.getAttribute("currentUser");
        model.addAttribute("inF" , this.inforService.getInforByUser(user.getId_tai_khoan()));
        return "seeker-level";
    }
    
    
    @PostMapping("/seeker/profile-level")
    public String addLevelDetail(Model model,@ModelAttribute(value = "levelDetail") LevelDetail levelDetail){
        if(this.levelService.addLevel(levelDetail) == true)
            return "seeker-profile";
        else
            return "seeker-level";
    }
}
