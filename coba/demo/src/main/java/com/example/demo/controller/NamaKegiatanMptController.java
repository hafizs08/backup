package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.example.demo.entity.NamaKegiatanMpt;
import com.example.demo.service.NamaKegiatanMptService;

import java.util.List;

@RestController
@RequestMapping("/nama_kegiatan_mpt")
public class NamaKegiatanMptController {

    private final NamaKegiatanMptService namaKegiatanMptService;

    @Autowired
    public NamaKegiatanMptController(NamaKegiatanMptService namaKegiatanMptService) {
        this.namaKegiatanMptService = namaKegiatanMptService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<NamaKegiatanMpt> getNamaKegiatanMptById(@PathVariable("id") Long id) {
        NamaKegiatanMpt namaKegiatanMpt = namaKegiatanMptService.getNamaKegiatanMptById(id);
        if (namaKegiatanMpt != null) {
            return ResponseEntity.ok(namaKegiatanMpt);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @GetMapping
    public ResponseEntity<List<NamaKegiatanMpt>> getAllNamaKegiatanMpt() {
        List<NamaKegiatanMpt> namaKegiatanMptList = namaKegiatanMptService.getAllNamaKegiatanMpt();
        return ResponseEntity.ok(namaKegiatanMptList);
    }

    @PostMapping
    public ResponseEntity<NamaKegiatanMpt> createNamaKegiatanMpt(@RequestBody NamaKegiatanMpt namaKegiatanMpt) {
        NamaKegiatanMpt createdNamaKegiatanMpt = namaKegiatanMptService.createNamaKegiatanMpt(namaKegiatanMpt);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdNamaKegiatanMpt);
    }

    @PutMapping("/{id}")
    public ResponseEntity<NamaKegiatanMpt> updateNamaKegiatanMpt(@PathVariable("id") Long id, @RequestBody NamaKegiatanMpt updatedNamaKegiatanMpt) {
        NamaKegiatanMpt namaKegiatanMpt = namaKegiatanMptService.updateNamaKegiatanMpt(id, updatedNamaKegiatanMpt);
        if (namaKegiatanMpt != null) {
            return ResponseEntity.ok(namaKegiatanMpt);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteNamaKegiatanMpt(@PathVariable("id") Long id) {
        boolean deleted = namaKegiatanMptService.deleteNamaKegiatanMpt(id);
        if (deleted) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}
