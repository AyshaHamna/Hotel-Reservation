/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.reception;

import java.util.List;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author User
 */
@RestController
public class ReceptionController {
    
    @Autowired
    private ReceptionRepository receptionRepository;
    
    @PostMapping(path = "/receptions")
    public Reception createReception(@RequestBody Reception reception) 
    {
        String receptionRefId =(UUID.randomUUID().toString().substring(0, 5));
        reception.setReceptionReferenceId(receptionRefId);
         return receptionRepository.save(reception);
    }
    
    @GetMapping(path = "/receptions")
    public List<Reception> getReception() {
        return (List<Reception>) receptionRepository.findAll();
    }
    
    @GetMapping(path = "/receptions/{receptionReferenceId}")
    public Reception getReceptionByRef(@PathVariable String receptionReferenceId){
        return receptionRepository.findByReceptionReferenceId(receptionReferenceId);
    } 
    
    @GetMapping(path = "/receptions/login/{username}")
    public Reception getReceptionByUsername(@PathVariable String username){
        return receptionRepository.findByUsername(username);
    } 
    
    @PutMapping(path = "/receptions")
    public Reception updateReception(@RequestBody Reception reception) {
        return receptionRepository.save(reception);
    }
    
    @DeleteMapping(path = "/receptions/{receptionReferenceId}")
    public void deleteReception(@PathVariable String receptionReferenceId){
         Reception deletedReception = receptionRepository.findByReceptionReferenceId(receptionReferenceId);
         receptionRepository.delete(deletedReception);
    }
    
}
