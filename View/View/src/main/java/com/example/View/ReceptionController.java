/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.View;

import com.example.View.model.Book;
import com.example.View.model.Reception;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author User
 */
@Controller
public class ReceptionController {
    
    @GetMapping(path = "/add-reception")
    public String addReception(ModelMap model) {
        model.addAttribute("reception", new Reception());
        return "admin/receptionRegister";
    }

    @PostMapping(path = "/reception-added")
    public String addReception(ModelMap model, @ModelAttribute Reception reception) {
        
        RestTemplate restTemplate = new RestTemplate();
        Reception createdReception = restTemplate.postForObject("http://localhost:8088/receptions", reception, Reception.class);
        
        return "admin/receptionRegister";
    } 
  
    @GetMapping(path = "/update-reception/{receptionReferenceId}")
    public String UpdateReception(ModelMap model, @PathVariable String receptionReferenceId) {
        RestTemplate restTemplate = new RestTemplate();
        Reception searchedReception = restTemplate.getForObject("http://localhost:8088/receptions/" + receptionReferenceId, Reception.class);
        model.addAttribute("reception", searchedReception);
        return "admin/editReception";
    }
    
    @PostMapping(path = "/reception-updated/{id}")
    public String UpdateReception(ModelMap model, @ModelAttribute Reception reception) {
        RestTemplate restTemplate = new RestTemplate();
        Map<String, String> params = new HashMap<String, String>();
        params.put("id", Integer.toString(reception.getId()));
        restTemplate.put("http://localhost:8088/receptions/{id}", reception, params);
        return "admin/viewReport";
    }
    
    @GetMapping(path = "/reception-login")
    public String receptionLogin(ModelMap model) {
        model.addAttribute("reception", new Reception());
        return "receptionLogin";
    }
    
    @PostMapping(path = "/login-process")
    public String loginProcess(ModelMap model, @ModelAttribute Reception reception) {
        RestTemplate restTemplate = new RestTemplate();
        String username = reception.getUsername();
        String password = reception.getPassword();
        
        Reception login = restTemplate.getForObject("http://localhost:8088/receptions/login/" + username, Reception.class);

        if(username.equals(login.getUsername()) & password.equals(login.getPassword())){
            return "reception/email";
        }
        else 
        return "receptionLogin";
    }
    
    @GetMapping(path = "/rec-add-reservation")
    public String addBooking(ModelMap model) {
        model.addAttribute("book", new Book());

        return "reception/receptionBook";
    }

    @PostMapping(path = "/rec-reservation-added")
    public String addBooking(ModelMap model, @ModelAttribute Book book) {
        RestTemplate restTemplate = new RestTemplate();
        Book createdBook = restTemplate.postForObject("http://localhost:8084/books", book, Book.class);

        return "reception/receptionBook";
    }
    
}
