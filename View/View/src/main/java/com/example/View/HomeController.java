/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.View;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author User
 */
@Controller
public class HomeController {
    
    @GetMapping(path = "/home")    
    public String home(ModelMap model){
        return "home";
    }
    
    @GetMapping(path = "/about")    
    public String about(ModelMap model){
        return "about";
    }
   
}
