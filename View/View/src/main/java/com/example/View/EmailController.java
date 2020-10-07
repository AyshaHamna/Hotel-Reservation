/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.View;

import com.example.View.model.ReceptionEmail;
import javax.validation.constraints.Email;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author User
 */

@Controller
public class EmailController {
    
    @Autowired
    public JavaMailSender javaMailSender;
    
    @GetMapping(path = "/add-email")
    public String addEmail(ModelMap model) {
        return "reception/email";
    }
    
    @PostMapping(path = "/send-email")
    public String sendEmail(ModelMap model, @ModelAttribute ReceptionEmail email){
        
        SimpleMailMessage message = new SimpleMailMessage();
        
        message.setTo(email.getTo());
        message.setSubject(email.getSubject());
        message.setText(email.getMessage());
        
        javaMailSender.send(message);
        
        return "reception/email";
    }
    // http://localhost:8081/email/sendEmail
    
}
