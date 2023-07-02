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

    
    // public Optional<RiwayatMPT> getRiwayatMPTById(Long id) {
    //     return riwayatMPTRepository.findById(id);
    // }
    public RiwayatMPT getRiwayatMPTById(Long id) {
        return riwayatMPTRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Riwayat MPT not found with id: " + id));
    }

    public RiwayatMPT saveRiwayatMPT(RiwayatMPT riwayatMPT) {
        return riwayatMPTRepository.save(riwayatMPT);
    }

    public void deleteRiwayatMPT(Long id) {
        riwayatMPTRepository.deleteById(id);
    }
    //  public RiwayatMPT updateRiwayatMPT(Long id, RiwayatMPT updatedRiwayatMPT) {
    //     Optional<RiwayatMPT> riwayatMPTOptional = riwayatMPTRepository.findById(id);
    //     if (riwayatMPTOptional.isPresent()) {
    //         RiwayatMPT riwayatMPT = riwayatMPTOptional.get();
    //         //riwayatMPT.setId_kegiatan_mpt(updatedRiwayatMPT.getId_kegiatan_mpt());
    //         riwayatMPT.setId_user(updatedRiwayatMPT.getId_user());
    //         riwayatMPT.setStatus_mpt(updatedRiwayatMPT.getStatus_mpt());
    //         riwayatMPT.setFile_seritikat_mpt(updatedRiwayatMPT.getFile_seritikat_mpt());
    //         riwayatMPT.setHash(updatedRiwayatMPT.getHash());
    //         riwayatMPT.setKeterangan_mhs(updatedRiwayatMPT.getKeterangan_mhs());
    //         riwayatMPT.setKeterangan_sa(updatedRiwayatMPT.getKeterangan_sa());
    //         riwayatMPT.setUpdated_at(updatedRiwayatMPT.getUpdated_at());
    //         return riwayatMPTRepository.save(riwayatMPT);
    //     } else {
    //         throw new RuntimeException("Riwayat MPT not found with id: " + id);
    //     }
    // }

    
}