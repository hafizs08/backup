package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.NamaKegiatanMpt;
import com.example.demo.repository.NamaKegiatanMptRepository;

import java.util.List;

@Service
public class NamaKegiatanMptService {

    private final NamaKegiatanMptRepository namaKegiatanMptRepository;

    @Autowired
    public NamaKegiatanMptService(NamaKegiatanMptRepository namaKegiatanMptRepository) {
        this.namaKegiatanMptRepository = namaKegiatanMptRepository;
    }

    public NamaKegiatanMpt getNamaKegiatanMptById(Long id) {
        return namaKegiatanMptRepository.findById(id).orElse(null);
    }

    public List<NamaKegiatanMpt> getAllNamaKegiatanMpt() {
        return namaKegiatanMptRepository.findAll();
    }

    public NamaKegiatanMpt createNamaKegiatanMpt(NamaKegiatanMpt namaKegiatanMpt) {
        return namaKegiatanMptRepository.save(namaKegiatanMpt);
    }

    public NamaKegiatanMpt updateNamaKegiatanMpt(Long id, NamaKegiatanMpt updatedNamaKegiatanMpt) {
        NamaKegiatanMpt namaKegiatanMpt = namaKegiatanMptRepository.findById(id).orElse(null);
        if (namaKegiatanMpt != null) {
        namaKegiatanMpt.setNama_kegiatan(updatedNamaKegiatanMpt.getNama_kegiatan());
        namaKegiatanMpt.setCreated_at(updatedNamaKegiatanMpt.getCreated_at());
        namaKegiatanMpt.setCreated_by(updatedNamaKegiatanMpt.getCreated_by());
        namaKegiatanMpt.setUpdated_at(updatedNamaKegiatanMpt.getUpdated_at());
        namaKegiatanMpt.setUpdated_by(updatedNamaKegiatanMpt.getUpdated_by());
        // Set other updated fields
        return namaKegiatanMptRepository.save(namaKegiatanMpt);
        } else {
        return null;
        }
        }
    public boolean deleteNamaKegiatanMpt(Long id) {
        NamaKegiatanMpt namaKegiatanMpt = namaKegiatanMptRepository.findById(id).orElse(null);
        if (namaKegiatanMpt != null) {
            namaKegiatanMptRepository.delete(namaKegiatanMpt);
            return true;
        } else {
            return false;
        }
    }
}