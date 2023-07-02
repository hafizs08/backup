package com.example.demo.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "partisipan")
public class Partisipan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_partisipan;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_usulan")
    private Usulan usulan;

    @Column(name = "no_induk")
    private String no_induk;

    @Column(name = "nama_partisipan")
    private String nama_partisipan;

    @Column(name = "nik")
    private String nik;

    @Column(name = "tempat_lahir")
    private String tempat_lahir;

    @Column(name = "tgl_lahir")
    @Temporal(TemporalType.DATE)
    private Date tgl_lahir;

    @Column(name = "peran_partisipan")
    private String peran_partisipan;

    @Column(name = "dasar_pengiriman", length = 1000)
    private String dasar_pengiriman;

    @Column(name = "created_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date created_at;

    @Column(name = "created_by")
    private String created_by;

    @Column(name = "updated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date updated_at;

    @Column(name = "updated_by")
    private String updated_by;

    // Constructors, getters, and setters

    // ... (getters and setters for all fields)
}
