package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.example.demo.entity.RiwayatMPT;
import com.example.demo.service.RiwayatMPTService;

import java.util.List;
import java.util.NoSuchElementException;
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

    // @GetMapping("/{id}")
    // public ResponseEntity<RiwayatMPT> getRiwayatMPTById(@PathVariable Long id) {
    //     Optional<RiwayatMPT> riwayatMPTOptional = riwayatMPTService.getRiwayatMPTById(id);
    //     return riwayatMPTOptional.map(riwayatMPT -> new ResponseEntity<>(riwayatMPT, HttpStatus.OK))
    //             .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
    // }
    @GetMapping("/{id}")
    public ResponseEntity<RiwayatMPT> getRiwayatMPTById(@PathVariable Long id) {
        RiwayatMPT riwayatMPT = riwayatMPTService.getRiwayatMPTById(id);
        return ResponseEntity.ok(riwayatMPT);
    }

    @PostMapping
    public ResponseEntity<RiwayatMPT> createRiwayatMPT(@RequestBody RiwayatMPT riwayatMPT) {
        RiwayatMPT createdRiwayatMPT = riwayatMPTService.saveRiwayatMPT(riwayatMPT);
        return new ResponseEntity<>(createdRiwayatMPT, HttpStatus.CREATED);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteRiwayatMPT(@PathVariable long id) {
        riwayatMPTService.deleteRiwayatMPT(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
    //  @PutMapping("/{id}")
    // public ResponseEntity<RiwayatMPT> updateRiwayatMPT(
    //         @PathVariable("id") long id, @RequestBody RiwayatMPT updatedRiwayatMPT) {
    //     RiwayatMPT riwayatMPT = riwayatMPTService.updateRiwayatMPT(id, updatedRiwayatMPT);
    //     return new ResponseEntity<>(riwayatMPT, HttpStatus.OK);
    // }
    
//     @PutMapping("/a/{id}")
//     public ResponseEntity<RiwayatMPT> updateRiwayatMPT(@PathVariable Long id, @RequestBody RiwayatMPT updatedRiwayatMPT) {
//     Optional<RiwayatMPT> riwayatMPTOptional = riwayatMPTService.getRiwayatMPTById(id);
//     if (riwayatMPTOptional.isPresent()) {
//         RiwayatMPT riwayatMPT = riwayatMPTOptional.get();
        
//         if (updatedRiwayatMPT.getId_kegiatan_mpt() != 0) {
//             riwayatMPT.setId_kegiatan_mpt(updatedRiwayatMPT.getId_kegiatan_mpt());
//         }
//         if(updatedRiwayatMPT.getId_user() != 0){
//             riwayatMPT.setId_user(updatedRiwayatMPT.getId_user());
//         }
//         if (updatedRiwayatMPT.getStatus_mpt() != null) {
//             riwayatMPT.setStatus_mpt(updatedRiwayatMPT.getStatus_mpt());
//         }
//         if (updatedRiwayatMPT.getFile_seritikat_mpt() != null) {
//             riwayatMPT.setFile_seritikat_mpt(updatedRiwayatMPT.getFile_seritikat_mpt());
//         }
//         if (updatedRiwayatMPT.getHash() != null) {
//             riwayatMPT.setHash(updatedRiwayatMPT.getHash());
//         }
//         if (updatedRiwayatMPT.getKeterangan_mhs() != null) {
//             riwayatMPT.setKeterangan_mhs(updatedRiwayatMPT.getKeterangan_mhs());
//         }
//         if (updatedRiwayatMPT.getKeterangan_sa() != null) {
//             riwayatMPT.setKeterangan_sa(updatedRiwayatMPT.getKeterangan_sa());
//         }
//         if (updatedRiwayatMPT.getUpdated_at() != null) {
//             riwayatMPT.setUpdated_at(updatedRiwayatMPT.getUpdated_at());
//         }
        
//         RiwayatMPT updatedRiwayatMPTEntity = riwayatMPTService.updateRiwayatMPT(id, riwayatMPT);
//         return ResponseEntity.ok(updatedRiwayatMPTEntity);
//     } else {
//         return ResponseEntity.notFound().build();
//     }
// }


}
    

    

