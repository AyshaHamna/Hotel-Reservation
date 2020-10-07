/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.View.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class ContactList {
    
     private List<Contact> contacts;
     
     public ContactList() {
        contacts = new ArrayList<>();
    }   

    public List<Contact> getContacts() {
        return contacts;
    }

    public void setContacts(List<Contact> contacts) {
        this.contacts = contacts;
    }
}
