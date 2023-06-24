package com.example.demo.entity;

import java.sql.Time;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Data
@Getter
@Setter
@NoArgsConstructor
@Table(name = "usulan")
public class Usulan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_usulan")
    private int idUsulan;

    @Column(name = "id_user")
    private int idUser;

    @Column(name = "id_ormawa")
    private int idOrmawa;

    @Column(name = "pembiayaan")
    private String pembiayaan;

    @Column(name = "nama_kegiatan")
    private String namaKegiatan;

    @Column(name = "bentuk_kegiatan")
    private String bentukKegiatan;

    @Column(name = "deskripsi_kegiatan")
    private String deskripsiKegiatan;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "tanggal_mulai_kegiatan")
    private Date tanggalMulaiKegiatan;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "tanggal_selesai_kegiatan")
    private Date tanggalSelesaiKegiatan;

    @Temporal(TemporalType.TIME)
    @Column(name = "waktu_mulai_kegiatan")
    private Date waktuMulaiKegiatan;

    @Temporal(TemporalType.TIME)
    @Column(name = "waktu_selesai_kegiatan")
    private Date waktuSelesaiKegiatan;

    @Column(name = "tempat_kegiatan")
    private String tempatKegiatan;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "tanggal_keberangkatan")
    private Date tanggalKeberangkatan;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "tanggal_kepulangan")
    private Date tanggalKepulangan;

    @Column(name = "jumlah_partisipan")
    private int jumlahPartisipan;

    @Column(name = "target_kegiatan")
    private String targetKegiatan;

    @Column(name = "total_pendana")
    private int totalPendana;

    @Column(name = "tanda_tangan_ormawa")
    private String tandaTanganOrmawa;

    @Column(name = "id_pratisipan")
    private int idPratisipan;

    @Column(name = "id_rincian_biaya_kegiatan")
    private int idRincianBiayaKegiatan;

    @Column(name = "ketua_ormawa")
    private String ketuaOrmawa;

    @Column(name = "pembina")
    private String pembina;

    @Column(name = "latar_belakang")
    private String latarBelakang;

    @Column(name = "tujuan_kegiatan")
    private String tujuanKegiatan;

    @Column(name = "manfaat_kegiatan")
    private String manfaatKegiatan;

    @Column(name = "bentuk_pelaksanaan_kegiatan")
    private String bentukPelaksanaanKegiatan;

    @Column(name = "target_pencapaian_kegiatan")
    private String targetPencapaianKegiatan;

    @Column(name = "waktu_dan_tempat_pelaksanaan")
    private String waktuDanTempatPelaksanaan;

    @Column(name = "rencana_anggaran_kegiatan")
    private String rencanaAnggaranKegiatan;

    @Column(name = "id_tertib_acara")
    private int idTertibAcara;

    @Column(name = "perlengkapan")
    private String perlengkapan;

    @Column(name = "penutup")
    private String penutup;

    @Column(name = "postingan_kegiatan")
    private String postinganKegiatan;

    @Column(name = "dokumentasi_kegiatan")
    private String dokumentasiKegiatan;

    @Column(name = "tabulasi_hasil")
    private String tabulasiHasil;

    @Column(name = "faktur_pembayaran")
    private String fakturPembayaran;

    @Column(name = "status")
    private String status;

    @Column(name = "validasi_pembina")
    private String validasiPembina;

    @Column(name = "roles")
    private String roles;

    @Column(name = "file")
    private String file;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "updated_at")
    private Date updatedAt;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "created_at")
    private Date createdAt;

    public Usulan(int idUser, int idOrmawa, String pembiayaan, String namaKegiatan, String bentukKegiatan,
                  String deskripsiKegiatan, Date tanggalMulaiKegiatan, Date tanggalSelesaiKegiatan,
                  Date waktuMulaiKegiatan, Date waktuSelesaiKegiatan, String tempatKegiatan,
                  Date tanggalKeberangkatan, Date tanggalKepulangan, int jumlahPartisipan, String targetKegiatan,
                  int totalPendana, String tandaTanganOrmawa, int idPratisipan, int idRincianBiayaKegiatan,
                  String ketuaOrmawa, String pembina, String latarBelakang, String tujuanKegiatan,
                  String manfaatKegiatan, String bentukPelaksanaanKegiatan, String targetPencapaianKegiatan,
                  String waktuDanTempatPelaksanaan, String rencanaAnggaranKegiatan, int idTertibAcara,
                  String perlengkapan, String penutup, String postinganKegiatan, String dokumentasiKegiatan,
                  String tabulasiHasil, String fakturPembayaran, String status, String validasiPembina,
                  String roles, String file, Date updatedAt, Date createdAt) {
        this.idUser = idUser;
        this.idOrmawa = idOrmawa;
        this.pembiayaan = pembiayaan;
        this.namaKegiatan = namaKegiatan;
        this.bentukKegiatan = bentukKegiatan;
        this.deskripsiKegiatan = deskripsiKegiatan;
        this.tanggalMulaiKegiatan = tanggalMulaiKegiatan;
        this.tanggalSelesaiKegiatan = tanggalSelesaiKegiatan;
        this.waktuMulaiKegiatan = waktuMulaiKegiatan;
        this.waktuSelesaiKegiatan = waktuSelesaiKegiatan;
        this.tempatKegiatan = tempatKegiatan;
        this.tanggalKeberangkatan = tanggalKeberangkatan;
        this.tanggalKepulangan = tanggalKepulangan;
        this.jumlahPartisipan = jumlahPartisipan;
        this.targetKegiatan = targetKegiatan;
        this.totalPendana = totalPendana;
        this.tandaTanganOrmawa = tandaTanganOrmawa;
        this.idPratisipan = idPratisipan;
        this.idRincianBiayaKegiatan = idRincianBiayaKegiatan;
        this.ketuaOrmawa = ketuaOrmawa;
        this.pembina = pembina;
        this.latarBelakang = latarBelakang;
        this.tujuanKegiatan = tujuanKegiatan;
        this.manfaatKegiatan = manfaatKegiatan;
        this.bentukPelaksanaanKegiatan = bentukPelaksanaanKegiatan;
        this.targetPencapaianKegiatan = targetPencapaianKegiatan;
        this.waktuDanTempatPelaksanaan = waktuDanTempatPelaksanaan;
        this.rencanaAnggaranKegiatan = rencanaAnggaranKegiatan;
        this.idTertibAcara = idTertibAcara;
        this.perlengkapan = perlengkapan;
        this.penutup = penutup;
        this.postinganKegiatan = postinganKegiatan;
        this.dokumentasiKegiatan = dokumentasiKegiatan;
        this.tabulasiHasil = tabulasiHasil;
        this.fakturPembayaran = fakturPembayaran;
        this.status = status;
        this.validasiPembina = validasiPembina;
        this.roles = roles;
        this.file = file;
        this.updatedAt = updatedAt;
        this.createdAt = createdAt;
    }
}
