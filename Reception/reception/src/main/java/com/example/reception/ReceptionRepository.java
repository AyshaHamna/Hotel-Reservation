/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.reception;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository
public interface ReceptionRepository extends JpaRepository<Reception,Integer>{
    
    @Query("select r from Reception r")
    List<Reception> findAll();
    
    //used - to edit a reception detail
    @Query("select r from Reception r where r.receptionReferenceId = ?1")
    Reception findByReceptionReferenceId(String receptionReferenceId);
    
    @Query("select r from Reception r where r.username = ?1")
    Reception findByUsername(String username);
    
}
