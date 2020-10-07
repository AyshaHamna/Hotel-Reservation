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
public class BookList {
    private List<Book> books;
    
    public BookList() {
        books = new ArrayList<>();
    }   

    public List<Book> getBooks() {
        return books;
    }

    public void setContacts(List<Book> books) {
        this.books = books;
    }
     
}
