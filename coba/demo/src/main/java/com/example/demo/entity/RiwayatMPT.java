package com.example.demo.entity;

import lombok.Data;
import javax.persistence.*;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDateTime;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@Entity
@Table(name = "riwayat_mpt")
public class RiwayatMPT {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_riwayat_mpt")
    private int idRiwayatMPT;

    @ManyToOne
    @JoinColumn(name = "id_kegiatan_mpt")
    private KegiatanMPT kegiatanMPT;

    @ManyToOne
    @JoinColumn(name = "id_user")
    private User user;

    @Column(name = "status_mpt")
    private String statusMPT;

    @Column(name = "file_seritikat_mpt")
    private String fileSeritikatMPT;

    @Column(name = "hash")
    private String hash;

    @Column(name = "keterangan_mhs")
    private String keteranganMhs;

    @Column(name = "keterangan_sa")
    private String keteranganSA;

    @UpdateTimestamp
    @Column(name = "updated_at")
    private LocalDateTime updatedAt;

    @CreationTimestamp
    @Column(name = "created_at")
    private LocalDateTime createdAt;

    public RiwayatMPT(KegiatanMPT kegiatanMPT, User user, String statusMPT, String fileSeritikatMPT,
                      String hash, String keteranganMhs, String keteranganSA, LocalDateTime updatedAt,
                      LocalDateTime createdAt) {
        this.kegiatanMPT = kegiatanMPT;
        this.user = user;
        this.statusMPT = statusMPT;
        this.fileSeritikatMPT = fileSeritikatMPT;
        this.hash = hash;
        this.keteranganMhs = keteranganMhs;
        this.keteranganSA = keteranganSA;
        this.updatedAt = updatedAt;
        this.createdAt = createdAt;
    }

    // Getters and setters
}
