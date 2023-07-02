package com.example.demo.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "biaya_kegiatan")
public class BiayaKegiatan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_biaya_kegiatan;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_usulan")
    private Usulan usulan;

    @Column(name = "nama_biaya_kegiatan")
    private String nama_biaya_kegiatan;

    @Column(name = "kuantiti")
    private int kuantiti;

    @Column(name = "harga_satuan")
    private int harga_satuan;

    @Column(name = "total")
    private int total;

    @Column(name = "keterangan", length = 1000)
    private String keterangan;

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