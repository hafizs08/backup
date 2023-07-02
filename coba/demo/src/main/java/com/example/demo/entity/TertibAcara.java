package com.example.demo.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "tertib_acara")
public class TertibAcara {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_tertib_acara;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_usulan")
    private Usulan usulan;

    @Column(name = "waktu_mulai")
    @Temporal(TemporalType.TIMESTAMP)
    private Date waktu_mulai;

    @Column(name = "waktu_selesai")
    @Temporal(TemporalType.TIMESTAMP)
    private Date waktu_selesai;

    @Column(name = "aktivitas")
    private String aktivitas;

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
