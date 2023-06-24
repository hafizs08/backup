package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.RiwayatMPT;
import com.example.demo.repository.RiwayatMPTRepository;

import java.util.List;
import java.util.Optional;

@Service
public class RiwayatMPTService {

    private RiwayatMPTRepository riwayatMPTRepository;

    @Autowired
    public RiwayatMPTService(RiwayatMPTRepository riwayatMPTRepository) {
        this.riwayatMPTRepository = riwayatMPTRepository;
    }

    public List<RiwayatMPT> getAllRiwayatMPT() {
        return riwayatMPTRepository.findAll();
    }

    public Optional<RiwayatMPT> getRiwayatMPTById(int id) {
        return riwayatMPTRepository.findById(id);
    }

    public RiwayatMPT saveRiwayatMPT(RiwayatMPT riwayatMPT) {
        return riwayatMPTRepository.save(riwayatMPT);
    }

    public void deleteRiwayatMPT(int id) {
        riwayatMPTRepository.deleteById(id);
    }
}
