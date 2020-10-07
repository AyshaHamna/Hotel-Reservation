/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.Contact;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository
public interface ContactRepository extends JpaRepository<Contact,Integer>{
    
    @Query("select c from Contact c")
    List<Contact> findAll();
    
    @Query("select c from Contact c where c.contactReferenceId = ?1")
    Contact findByContactReferenceId(String contactReferenceId);
    
}
