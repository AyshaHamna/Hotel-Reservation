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
public class ReceptionList {
    
     private List<Reception> receptions;
    
    public ReceptionList() {
        receptions = new ArrayList<>();
    }   

    public List<Reception> getReceptions() {
        return receptions;
    }
    
    public void setReceptions(List<Reception> receptions) {
        this.receptions = receptions;
    }
    
}
