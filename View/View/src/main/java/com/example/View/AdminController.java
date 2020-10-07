/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.View;

import com.example.View.model.Admin;
import com.example.View.model.Book;
import com.example.View.model.Contact;
import com.example.View.model.Reception;
import java.util.Arrays;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author User
 */
@Controller
public class AdminController {
    
     @GetMapping(path = "/admin-login")
    public String adminLogin(ModelMap model) {
        return "admin/adminLogin";
    }
    
    @PostMapping(path = "/admin-login-process")
    public String adminLoginProcess(ModelMap model, @ModelAttribute Admin admin) {
        String un = admin.getUsername();
        String pw = admin.getPassword();
        if(un.equals("admin") & pw.equals("admin123")){
            return "admin/viewReport";
        }
        else{
            return "admin/adminLogin";   
        }
    }
    
    @GetMapping(path = "/view-all-reports")
    public String viewReport(ModelMap model) {
        return "admin/viewReport";
    }
    
    @GetMapping(path = "/all-contacts")
    public String searchContact(ModelMap model, @ModelAttribute Contact contact) {
        RestTemplate restTemplate = new RestTemplate(); 
        List<Contact> contactList = null;
        Contact[] contactArr = restTemplate.getForObject("http://localhost:8082/contacts", Contact[].class);
        if(contactArr != null && contactArr.length > 0){
            contactList = Arrays.asList(contactArr);
        }        
        model.addAttribute("contacts", contactList);
        return "admin/feedbackDetails";
    }
    
    @GetMapping(path = "/all-receptions")
    public String searchAllreceptions(ModelMap model, @ModelAttribute Reception reception) {
        RestTemplate restTemplate = new RestTemplate();
        List<Reception> receptionList = null;
        Reception[] receptionArr = restTemplate.getForObject("http://localhost:8088/receptions", Reception[].class);
        if (receptionArr != null && receptionArr.length > 0) {
            receptionList = Arrays.asList(receptionArr);
        }
        model.addAttribute("receptions", receptionList);
        return "admin/receptionDetails";
    }
    
    @GetMapping(path = "/all-reservations")
    public String searchAllReservations(ModelMap model, @ModelAttribute Book book) {
        RestTemplate restTemplate = new RestTemplate();
        List<Book> bookList = null;
        Book[] bookArr = restTemplate.getForObject("http://localhost:8084/books", Book[].class);
        if (bookArr != null && bookArr.length > 0) {
            bookList = Arrays.asList(bookArr);
        }
        model.addAttribute("books", bookList);
        return "admin/bookingDetails";
    }

}
