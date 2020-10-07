/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.Contact;

import java.util.List;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author User
 */
@RestController
public class ContactController {
    
    @Autowired
    private ContactRepository contactRepository;
    
    @PostMapping(path = "/contacts")
    public Contact createFeedback(@RequestBody Contact contact) 
    {
        String contactRefId =(UUID.randomUUID().toString().substring(0, 5));
        contact.setContactReferenceId(contactRefId);
        
         return contactRepository.save(contact);
    }
    
    @GetMapping(path = "/contacts")
    public List<Contact> getFeedback() {
        return (List<Contact>) contactRepository.findAll();
    }
    
}
