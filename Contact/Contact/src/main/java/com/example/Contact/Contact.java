/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.Contact;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author User
 */
@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
        
public class Contact {
    
    @Id
     @GeneratedValue(strategy = GenerationType.IDENTITY)
     private Integer id;
    
     @Column(name = "contact_reference_id")
     private String contactReferenceId;
    
     @Column(name = "name")
     private String name;
    
     @Column(name = "email")
     private String email;
     
     @Column(name = "subject")
     private String subject;
     
     @Column(name = "message")
     private String message;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContactReferenceId() {
        return contactReferenceId;
    }

    public void setContactReferenceId(String contactReferenceId) {
        this.contactReferenceId = contactReferenceId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
     
}
