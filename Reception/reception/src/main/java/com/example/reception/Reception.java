/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.reception;

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

public class Reception {
    
    @Id
     @GeneratedValue(strategy = GenerationType.IDENTITY)
     private Integer id;
    
     @Column(name = "reception_reference_id")
     private String receptionReferenceId;
    
     @Column(name = "nic")
     private String nic;
    
     @Column(name = "first_name")
     private String firstName;
     
     @Column(name = "last_name")
     private String lastName;
     
     @Column(name = "address")
     private String address;
     
     @Column(name = "username")
     private String username;
     
     @Column(name = "password")
     private String password;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getReceptionReferenceId() {
        return receptionReferenceId;
    }

    public void setReceptionReferenceId(String receptionReferenceId) {
        this.receptionReferenceId = receptionReferenceId;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
     
}
