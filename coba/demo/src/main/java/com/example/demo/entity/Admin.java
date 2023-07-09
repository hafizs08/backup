package com.example.demo.entity;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@Data
@Table(name = "admin")
@NoArgsConstructor
public class Admin {
    @Id
    @Column(name = "id_admin")
    private String id_admin;
    
    @Column(name = "email")
    private String email;

    @Column(name = "nama_lengkap")
    private String nama_lengkap;

    @Column(name = "nip")
    private String nip;

    @Column(name = "image")
    private String image;

    @Column(name = "no_hp")
    private String no_hp;

    @Column(name = "role")
    private String role;

    @Column(name = "created_at")
    private String created_at;

    @Column(name = "created_by")
    private String created_by;

    @Column(name = "updated_at")
    private String updated_at;

    @Column(name = "updated_by")
    private String updated_by;

    
    public Admin(String email, String nama_lengkap, String nip, String image, String no_hp, String role,
                String created_at, String created_by, String updated_at, String updated_by) {
        this.email = email;
        this.nama_lengkap = nama_lengkap;
        this.nip = nip;
        this.image = image;
        this.no_hp = no_hp;
        this.role = role;
        this.created_at = created_at;
        this.created_by = created_by;
        this.updated_at = updated_at;
        this.updated_by = updated_by;
    }
}