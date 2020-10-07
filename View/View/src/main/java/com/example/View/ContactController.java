/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.View;

import com.example.View.model.Contact;
import java.util.Arrays;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author User
 */
@Controller
public class ContactController {
    
    @GetMapping(path = "/add-contact")
    public String addContact(ModelMap model) {
        model.addAttribute("contact", new Contact());
        return "addNewContact";
    }
    
    @PostMapping(path = "/contact-added")
    public String addContact(ModelMap model, @ModelAttribute Contact contact) {
        
       System.out.println("Contact Id:" +contact.getContactReferenceId()+" Name: "+contact.getName());
       
        RestTemplate restTemplate = new RestTemplate();
        Contact createdContact = restTemplate.postForObject("http://localhost:8082/contacts", contact, Contact.class);
        
        return "addNewContact";
    }
    
    @GetMapping(path = "/view-all-contacts")//model attribute contact not needed
    public String searchContact(ModelMap model, @ModelAttribute Contact contact) {
        
        RestTemplate restTemplate = new RestTemplate(); 
        List<Contact> contactList = null;
        Contact[] contactArr = restTemplate.getForObject("http://localhost:8082/contacts", Contact[].class);
        if(contactArr != null && contactArr.length > 0){
            contactList = Arrays.asList(contactArr);
        }        
        model.addAttribute("contacts", contactList);
        return "reception/feedbackDetails";
    }
    
}
