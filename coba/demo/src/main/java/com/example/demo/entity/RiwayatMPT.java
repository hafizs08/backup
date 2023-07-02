package com.example.demo.entity;

import lombok.Data;
import lombok.Getter;

import javax.persistence.*;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDateTime;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "riwayat_mpt")
public class RiwayatMPT {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_riwayat_mpt")
    private long id_riwayat_mpt;

    @ManyToOne
    @JoinColumn(name = "id_kegiatan_mpt")
    private KegiatanMPT kegiatanMPT;

    @ManyToOne
    @JoinColumn(name = "id_user")
    private User user;

    @Column(name = "status_mpt")
    private String status_mpt;

    @Column(name = "file_seritikat_mpt")
    private String file_seritikat_mpt;

    @Column(name = "hash")
    private String hash;

    @Column(name = "keterangan_mhs")
    private String keterangan_mhs;

    @Column(name = "keterangan_sa")
    private String keterangan_sa;

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


    // public void setId_kegiatan_mpt(Object id_kegiatan_mpt) {
    // }

    // public boolean isPresent() {
    //     return false;
    // }

    // public RiwayatMPT get() {
    //     return null;
    // }



    // Getter for id_kegiatan_mpt
   
    
    // Setters, Constructors, and other methods
}
