/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.View;

import com.example.View.model.Book;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
//import com.example.View.model.BookList;
import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
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
public class BookController {
    
    @Autowired
    public JavaMailSender javaMailSender;
    
    @GetMapping(path = "/add-reservation")
    public String addBooking(ModelMap model) {
        model.addAttribute("book", new Book());
        return "book";
    }
    
    @PostMapping(path = "/reservation-added")
    public String addBooking(ModelMap model, @ModelAttribute Book book) throws UnsupportedEncodingException, MalformedURLException, IOException {
        
        RestTemplate restTemplate = new RestTemplate();
        Book createdBook = restTemplate.postForObject("http://localhost:8084/books", book, Book.class);
       
        
        if (createdBook != null && !createdBook.getBookReferenceId().isEmpty()) {
            
            String bookReferenceId = createdBook.getBookReferenceId();
            String email = createdBook.getEmail();
            String name = createdBook.getFirstName();
            
            SimpleMailMessage message = new SimpleMailMessage();
        
        message.setTo(email);
        message.setSubject("Reservation confirmation!");
        message.setText("Hi " + name + "! " + "Your reservation is confirmed. "
                + "Your Confirmation number: " + bookReferenceId);
        
        javaMailSender.send(message);
        } 
        
        return "book";
    }
    
    @GetMapping(path = "/reservation-by-id")
    public String searchReservation(ModelMap model) {
        model.addAttribute("book", new Book());
        return "findReservation";
    }

    @GetMapping(path = "/view-all-reservations")
    public String searchAllReservations(ModelMap model, @ModelAttribute Book book) {
        
        RestTemplate restTemplate = new RestTemplate();
        List<Book> bookList = null;
        Book[] bookArr = restTemplate.getForObject("http://localhost:8084/books", Book[].class);
        if (bookArr != null && bookArr.length > 0) {
            bookList = Arrays.asList(bookArr);
        }
        model.addAttribute("books", bookList);
        return "reception/bookingDetails";
    }
    
    @PostMapping(path = "/view-reservation")
    public String searchReservation(ModelMap model, @ModelAttribute Book book) {
        RestTemplate restTemplate = new RestTemplate();
        String bookReferenceId = book.getBookReferenceId();
        Book searchedBook = restTemplate.getForObject("http://localhost:8084/books/" + bookReferenceId, Book.class);

        if (searchedBook != null) {
            model.addAttribute("book", searchedBook);
        } 
        return "viewReservation";
    }

    @GetMapping(path = "/reservation-deleted/{bookReferenceId}")
    public String deleteReservation(ModelMap model, @ModelAttribute Book book) {
        RestTemplate restTemplate = new RestTemplate();
        System.out.println("id: "+book.getBookReferenceId());
        String bookReferenceId = book.getBookReferenceId();
        restTemplate.delete("http://localhost:8084/books/" + bookReferenceId, Book.class);
        return "findReservation";
    }
    
}
