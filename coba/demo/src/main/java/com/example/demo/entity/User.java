package com.example.demo.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.time.LocalDateTime;

@Entity
@Table(name = "user")
public class User {
    @Id
    @Column(name = "id_user")
    private String idUser;

    @ManyToOne
    @JoinColumn(name = "id_ormawa")
    private Ormawa ormawa;

    @Column(name = "id_ormawaB")
    private int idOrmawaB;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "nama_lengkap")
    private String namaLengkap;

    @Column(name = "nim")
    private String nim;

    @Column(name = "no_hp")
    private String noHp;

    @Column(name = "image")
    private String image;

    @Column(name = "point_mpt")
    private int pointMpt;

    @Column(name = "semester")
    private String semester;

    @Column(name = "kelas")
    private String kelas;

    @Column(name = "periode_mpt")
    private String periodeMpt;

    @Column(name = "status_mpt")
    private String statusMpt;

    @Column(name = "prodi")
    private String prodi;

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
    // Constructors, getters, and setters
}