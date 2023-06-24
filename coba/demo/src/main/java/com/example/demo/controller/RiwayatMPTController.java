package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.example.demo.entity.RiwayatMPT;
import com.example.demo.service.RiwayatMPTService;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/riwayat-mpt")
public class RiwayatMPTController {

    private RiwayatMPTService riwayatMPTService;

    @Autowired
    public RiwayatMPTController(RiwayatMPTService riwayatMPTService) {
        this.riwayatMPTService = riwayatMPTService;
    }

    @GetMapping
    public ResponseEntity<List<RiwayatMPT>> getAllRiwayatMPT() {
        List<RiwayatMPT> riwayatMPTList = riwayatMPTService.getAllRiwayatMPT();
        return new ResponseEntity<>(riwayatMPTList, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<RiwayatMPT> getRiwayatMPTById(@PathVariable int id) {
        Optional<RiwayatMPT> riwayatMPTOptional = riwayatMPTService.getRiwayatMPTById(id);
        return riwayatMPTOptional.map(riwayatMPT -> new ResponseEntity<>(riwayatMPT, HttpStatus.OK))
                .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    @PostMapping
    public ResponseEntity<RiwayatMPT> createRiwayatMPT(@RequestBody RiwayatMPT riwayatMPT) {
        RiwayatMPT createdRiwayatMPT = riwayatMPTService.saveRiwayatMPT(riwayatMPT);
        return new ResponseEntity<>(createdRiwayatMPT, HttpStatus.CREATED);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteRiwayatMPT(@PathVariable int id) {
        riwayatMPTService.deleteRiwayatMPT(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
