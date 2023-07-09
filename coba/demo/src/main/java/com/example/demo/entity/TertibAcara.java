package com.example.demo.entity;

import javax.persistence.*;

import lombok.Data;
import lombok.NoArgsConstructor;



@Entity
@Data
@NoArgsConstructor
@Table(name = "tertib_acara")
public class TertibAcara {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_tertib_acara;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_usulan")
    private Usulan usulan;

    @Column(name = "waktu_mulai")
    private String waktu_mulai;

    @Column(name = "waktu_selesai")
    private String waktu_selesai;

    @Column(name = "aktivitas")
    private String aktivitas;

    @Column(name = "keterangan", length = 1000)
    private String keterangan;

    @Column(name = "created_at")
    private String created_at;

    @Column(name = "created_by")
    private String created_by;

    @Column(name = "updated_at")
    private String updated_at;

    @Column(name = "updated_by")
    private String updated_by;


    // public TertibAcara(Long id_tertib_acara) {
    //     this.id_tertib_acara =  id_tertib_acara;
    // }
    // public TertibAcara(Long id_tertib_acara) {
    //     this.id_tertib_acara =  id_tertib_acara;
    // }
    // Constructors, getters, and setters

    // ... (getters and setters for all fields)
}
