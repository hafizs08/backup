package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Usulan;

@Repository
public interface UsulanRepository extends JpaRepository<Usulan, Integer> {
    // Tambahkan kueri khusus jika diperlukan
}
