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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.entity.Usulan;
import com.example.demo.service.UsulanService;

@RestController
@RequestMapping("/usulan")
public class UsulanController {
    private UsulanService usulanService;

    @Autowired
    public UsulanController(UsulanService usulanService) {
        this.usulanService = usulanService;
    }

    // @PostMapping
    // public Usulan saveUsulan(@RequestBody Usulan usulan) {
    //     return usulanService.saveUsulan(usulan);
    // }

    @GetMapping
    public List<Usulan> getAllUsulans() {
        return usulanService.getAllUsulans();
    }

    @GetMapping("/{id}")
    public Usulan getUsulanById(@PathVariable int id) {
        return usulanService.getUsulanById(id);
    }

    @PutMapping("/{id}")
    public Usulan updateUsulan(@PathVariable int id, @RequestBody Usulan updatedUsulan) {
        return usulanService.updateUsulan(id, updatedUsulan);
    }

    @DeleteMapping("/{id}")
    public void deleteUsulan(@PathVariable int id) {
        Usulan existingUsulan = usulanService.getUsulanById(id);
        if (existingUsulan != null) {
            usulanService.deleteUsulan(existingUsulan);
        } else {
            throw new NoSuchElementException("Usulan not found with id: " + id);
        }
    }

    // @PostMapping
    // public ResponseEntity<Usulan> createUsulan(@RequestParam("idUser") int idUser,  
    //         @RequestParam("idOrmawa") int idOrmawa,
    //         @RequestParam("pembiayaan") String pembiayaan,
    //         @RequestParam("namaKegiatan") String namaKegiatan,
    //         @RequestParam("bentukKegiatan") String bentukKegiatan,
    //         @RequestParam("deskripsiKegiatan") String deskripsiKegiatan,
    //         @RequestParam("tanggalMulaiKegiatan") Date tanggalMulaiKegiatan,
    //         @RequestParam("tanggalSelesaiKegiatan") Date tanggalSelesaiKegiatan,
    //         @RequestParam("waktuMulaiKegiatan") Time waktuMulaiKegiatan,
    //         @RequestParam("waktuSelesaiKegiatan") Time waktuSelesaiKegiatan,
    //         @RequestParam("tempatKegiatan") String tempatKegiatan,
    //         @RequestParam("tanggalKeberangkatan") Date tanggalKeberangkatan,
    //         @RequestParam("tanggalKepulangan") Date tanggalKepulangan,
    //         @RequestParam("jumlahPartisipan") int jumlahPartisipan,
    //         @RequestParam("targetKegiatan") String targetKegiatan,
    //         @RequestParam("totalPendana") int totalPendana,
    //         @RequestParam("tandaTanganOrmawa") MultipartFile tandaTanganOrmawa,
    //         @RequestParam("idPartisipan") int idPartisipan,
    //         @RequestParam("idRincianBiayaKegiatan") int idRincianBiayaKegiatan,
    //         @RequestParam("ketuaOrmawa") String ketuaOrmawa,
    //         @RequestParam("pembina") String pembina,
    //         @RequestParam("latarBelakang") String latarBelakang,
    //         @RequestParam("tujuanKegiatan") String tujuanKegiatan,
    //         @RequestParam("manfaatKegiatan") String manfaatKegiatan,
    //         @RequestParam("bentukPelaksanaanKegiatan") String bentukPelaksanaanKegiatan,
    //         @RequestParam("targetPencapaianKegiatan") String targetPencapaianKegiatan,
    //         @RequestParam("waktuDanTempatPelaksanaan") String waktuDanTempatPelaksanaan,
    //         @RequestParam("rencanaAnggaranKegiatan") String rencanaAnggaranKegiatan,
    //         @RequestParam("idPanitiaPeserta") int idPanitiaPeserta,
    //         @RequestParam("idTertibAcara") int idTertibAcara,
    //         @RequestParam("perlengkapan") String perlengkapan,
    //         @RequestParam("penutup") String penutup,
    //         @RequestParam("postinganKegiatan") MultipartFile postinganKegiatan,
    //         @RequestParam("dokumentasiKegiatan") MultipartFile dokumentasiKegiatan,
    //         @RequestParam("tabulasiHasil") MultipartFile tabulasiHasil,
    //         @RequestParam("fakturPembayaran") MultipartFile fakturPembayaran,
    //         @RequestParam("status") String status,
    //         @RequestParam("validasiPembina") String validasiPembina,
    //         @RequestParam("roles") String roles,
    //         @RequestParam("file") MultipartFile file) {
    //     try {
    //         byte[] tandaTanganOrmawaData = tandaTanganOrmawa.getBytes();
    //         byte[] postinganKegiatanData = postinganKegiatan.getBytes();
    //         byte[] dokumentasiKegiatanData = dokumentasiKegiatan.getBytes();
    //         byte[] tabulasiHasilData = tabulasiHasil.getBytes();
    //         byte[] fakturPembayaranData = fakturPembayaran.getBytes();
    //         byte[] fileData = file.getBytes();

    //         //Usulan usulan = new Usulan(int );

    //         Usulan savedUsulan = usulanService.saveUsulan(usulan);
    //         return ResponseEntity.ok(savedUsulan);
    //     } catch (IOException e) {
    //         return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
    //     }
    // }

}
