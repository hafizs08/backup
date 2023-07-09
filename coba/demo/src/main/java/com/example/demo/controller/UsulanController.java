package com.example.demo.controller;

import java.io.IOException;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.Usulan;
import com.example.demo.service.UsulanService;

@RestController
@RequestMapping("/usulan")
public class UsulanController {

    private final UsulanService usulanService;

    @Autowired
    public UsulanController(UsulanService usulanService) {
        this.usulanService = usulanService;
    }

    @PostMapping
    public Usulan createUsulan(@RequestBody Usulan usulan) {
        return usulanService.createUsulan(usulan);
    }

    @GetMapping
    public List<Usulan> getAllUsulan() {
        return usulanService.getAllUsulan();
    }

    @GetMapping("/{id}")
    public Usulan getUsulanById(@PathVariable Long id) {
        return usulanService.getUsulanById(id);
    }

    @DeleteMapping("/{id}") // Menggunakan HTTP DELETE untuk operasi delete
    public void deleteUsulan(@PathVariable Long id) {
        usulanService.deleteUsulan(id);
    }

   

}
