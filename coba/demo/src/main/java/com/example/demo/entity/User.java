package com.example.demo.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_user;

    @Column(name = "id_ormawa")
    private int id_ormawa;

    @Column(name = "id_ormawaB")
    private int id_ormawaB;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "nama_lengkap")
    private String nama_lengkap;

    @Column(name = "nim")
    private String nim;

    @Column(name = "no_hp")
    private String no_hp;

    
    @Column(name = "image")
    private String image;

    @Column(name = "mpt")
    private int mpt;

    @Column(name = "semester")
    private String semester;

    @Column(name = "kelas")
    private String kelas;

    @Column(name = "periode_mpt")
    private String periode_mpt;

    @Column(name = "status")
    private String status;

    @Column(name = "prodi")
    private String prodi;

    @Column(name = "created_at")
    private LocalDateTime created_at;

    @Column(name = "updated_at")
    private LocalDateTime updated_at;

    // Getters and Setters, Constructors, and other methods
}
