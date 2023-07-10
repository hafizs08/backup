package com.example.demo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import javax.persistence.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "kegiatan_per_periode_mpt")
public class KegiatanPerPeriodeMpt {

    @Id
    @Column(name = "id_kegiatan_per_periode_mpt")
    private Long id_kegiatan_per_periode_mpt;

    @ManyToOne
    @JoinColumn(name = "id_periode_mpt")
    private PeriodeMpt id_periode_mpt;

    @ManyToOne
    @JoinColumn(name = "id_nama_kegiatan_mpt")
    private NamaKegiatanMpt id_nama_kegiatan_mpt;

    @Column(name = "tanggal_mulai_kegiatan_per_periode_mpt")
    private String tanggal_mulai_kegiatan_per_periode_mpt;

    @Column(name = "tanggal_selesai_kegiatan_per_periode_mpt")
    private String tanggal_selesai_kegiatan_per_periode_mpt;

    @Column(name = "point_mpt_diperoleh")
    private Integer point_mpt_diperoleh;

    @Column(name = "created_at")
    private String created_at;

    @Column(name = "created_by")
    private String created_by;

    @Column(name = "updated_at")
    private String updated_at;

    @Column(name = "updated_by")
    private String updated_by;

    public KegiatanPerPeriodeMpt(Long id_kegiatan_per_periode_mpt) {
        this.id_kegiatan_per_periode_mpt = id_kegiatan_per_periode_mpt;
    }

    
    // Constructors, getters, setters, and other methods
}
    // public KegiatanPerPeriodeMpt(Long id_kegiatan_per_periode_mpt) {
    //     this.id_kegiatan_per_periode_mpt = id_kegiatan_per_periode_mpt;
    // }

    // public void setId(Long id) {
    // }
    // public KegiatanPerPeriodeMpt(Integer id_kegiatan_per_periode_mpt, String tanggal_mulai_kegiatan_per_periode_mpt, String tanggal_selesai_kegiatan_per_periode_mpt, Integer point_mpt_diperoleh, String created_at, String created_by, String updated_at, String updated_by) {
    //     this.id_kegiatan_per_periode_mpt = id_kegiatan_per_periode_mpt;
    //     // ...
    // }

    // public KegiatanPerPeriodeMpt(Long id_kegiatan_per_periode_mpt, String tanggal_mulai_kegiatan_per_periode_mpt, String tanggal_selesai_kegiatan_per_periode_mpt, Integer point_mpt_diperoleh, String created_at, String created_by, String updated_at, String updated_by) {
    //     this.id_kegiatan_per_periode_mpt = id_kegiatan_per_periode_mpt;
    //     this.tanggal_mulai_kegiatan_per_periode_mpt = tanggal_mulai_kegiatan_per_periode_mpt;
    //     this.tanggal_selesai_kegiatan_per_periode_mpt = tanggal_selesai_kegiatan_per_periode_mpt;
    //     this.point_mpt_diperoleh = point_mpt_diperoleh;
    //     this.created_at = created_at;
    //     this.created_by = created_by;
    //     this.updated_at = updated_at;
    //     this.updated_by = updated_by;
    // }
