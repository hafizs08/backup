package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.KegiatanPerPeriodeMpt;


@Repository
public interface KegiatanPerPeriodeMptRepository extends JpaRepository<KegiatanPerPeriodeMpt, Long> {
    
}