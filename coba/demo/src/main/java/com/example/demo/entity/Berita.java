package com.example.demo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

import javax.persistence.*;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "berita")
@Data
@NoArgsConstructor
public class Berita {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_berita")
    private Long idBerita;

    @Column(name = "judul")
    private String judul;

    @Column(name = "penulis")
    private String penulis;

    @Column(name = "gambar")
    private String gambar;

    @Column(name = "teks", columnDefinition = "TEXT")
    private String teks;

    @Column(name = "tgl_terbit")
    private String tglTerbit;

    @UpdateTimestamp
    @Column(name = "updated_at")
    private LocalDateTime updated_at;

    @CreationTimestamp
    @Column(name = "created_at")
    private LocalDateTime created_at;

    @Column(name = "update_by")
    private String update_by;

    @Column(name = "create_by")
    private String create_by;

    // public Berita(String jenisKegiatan, String penulis, byte[] gambar, String teks , String detialBerita) {
    //     this.jenisKegiatan = jenisKegiatan;
    //     this.penulis = penulis;
    //     this.gambar = gambar;
    //     this.teks = teks;
    //     this.detialBerita = detialBerita;
    // }
}