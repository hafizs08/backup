package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.PeriodeMpt;
import com.example.demo.repository.PeriodeMptRepository;

import java.util.List;
import java.util.Optional;

@Service
public class PeriodeMptService {
    private final PeriodeMptRepository periodeMptRepository;

    @Autowired
    public PeriodeMptService(PeriodeMptRepository periodeMptRepository) {
        this.periodeMptRepository = periodeMptRepository;
    }

    public List<PeriodeMpt> getAllPeriodeMpt() {
        return periodeMptRepository.findAll();
    }

    public PeriodeMpt getPeriodeMptById(Long id) {
        return periodeMptRepository.findById(id).orElse(null);
    }

    public PeriodeMpt createPeriodeMpt(PeriodeMpt periodeMpt) {
        return periodeMptRepository.save(periodeMpt);
    }

    public PeriodeMpt updatePeriodeMpt(Long id, PeriodeMpt updatedPeriodeMpt) {
        Optional<PeriodeMpt> periodeMptOptional = periodeMptRepository.findById(id);
        if (periodeMptOptional.isPresent()) {
            PeriodeMpt periodeMpt = periodeMptOptional.get();
            periodeMpt.setTahun_periode_mpt(updatedPeriodeMpt.getTahun_periode_mpt());
            periodeMpt.setPeriode_mengulang_mpt(updatedPeriodeMpt.isPeriode_mengulang_mpt());
            periodeMpt.setTanggal_mulai_periode_mpt(updatedPeriodeMpt.getTanggal_mulai_periode_mpt());
            periodeMpt.setTanggal_berakhir_periode_mpt(updatedPeriodeMpt.getTanggal_berakhir_periode_mpt());
            // Set other updated fields
            periodeMpt.setUpdated_at(updatedPeriodeMpt.getUpdated_at());
            periodeMpt.setUpdated_by(updatedPeriodeMpt.getUpdated_by());
            return periodeMptRepository.save(periodeMpt);
        } else {
            throw new IllegalArgumentException("Periode MPT with ID " + id + " does not exist");
        }
    }
    public boolean deletePeriodeMpt(Long id) {
        Optional<PeriodeMpt> periodeMptOptional = periodeMptRepository.findById(id);
        if (periodeMptOptional.isPresent()) {
            PeriodeMpt periodeMpt = periodeMptOptional.get();
            periodeMptRepository.delete(periodeMpt);
            return true;
        } else {
            return false;
        }
    }
}
