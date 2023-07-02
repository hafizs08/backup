package com.example.demo.service;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Usulan;
import com.example.demo.repository.UsulanRepository;

@Service
public class UsulanService {
    private UsulanRepository usulanRepository;

    @Autowired
    public UsulanService(UsulanRepository usulanRepository) {
        this.usulanRepository = usulanRepository;
    }

    public Usulan saveUsulan(Usulan usulan) {
        return usulanRepository.save(usulan);
    }

    public List<Usulan> getAllUsulans() {
        return usulanRepository.findAll();
    }

    public Usulan getUsulanById(int id) {
        return usulanRepository.findById(id).orElse(null);
    }

    public void deleteUsulan(Usulan existingUsulan) {
        usulanRepository.delete(existingUsulan);
    }

    public Usulan updateUsulan(int id, Usulan updatedUsulan) {
    Optional<Usulan> optionalUsulan = usulanRepository.findById(id);
    if (optionalUsulan.isPresent()) {
        Usulan usulan = optionalUsulan.get();
        usulan.setIdUser(updatedUsulan.getIdUser());
        usulan.setIdOrmawa(updatedUsulan.getIdOrmawa());
        usulan.setPembiayaan(updatedUsulan.getPembiayaan());
        usulan.setNamaKegiatan(updatedUsulan.getNamaKegiatan());
        usulan.setBentukKegiatan(updatedUsulan.getBentukKegiatan());
        usulan.setDeskripsiKegiatan(updatedUsulan.getDeskripsiKegiatan());
        usulan.setTanggalMulaiKegiatan(updatedUsulan.getTanggalMulaiKegiatan());
        usulan.setTanggalSelesaiKegiatan(updatedUsulan.getTanggalSelesaiKegiatan());
        usulan.setWaktuMulaiKegiatan(updatedUsulan.getWaktuMulaiKegiatan());
        usulan.setWaktuSelesaiKegiatan(updatedUsulan.getWaktuSelesaiKegiatan());
        usulan.setTempatKegiatan(updatedUsulan.getTempatKegiatan());
        usulan.setTanggalKeberangkatan(updatedUsulan.getTanggalKeberangkatan());
        usulan.setTanggalKepulangan(updatedUsulan.getTanggalKepulangan());
        usulan.setJumlahPartisipan(updatedUsulan.getJumlahPartisipan());
        usulan.setTargetKegiatan(updatedUsulan.getTargetKegiatan());
        usulan.setTotalPendana(updatedUsulan.getTotalPendana());
        usulan.setTandaTanganOrmawa(updatedUsulan.getTandaTanganOrmawa());
        //usulan.setIdPartisipan(updatedUsulan.getIdPartisipan());
        usulan.setIdRincianBiayaKegiatan(updatedUsulan.getIdRincianBiayaKegiatan());
        usulan.setKetuaOrmawa(updatedUsulan.getKetuaOrmawa());
        usulan.setPembina(updatedUsulan.getPembina());
        usulan.setLatarBelakang(updatedUsulan.getLatarBelakang());
        usulan.setTujuanKegiatan(updatedUsulan.getTujuanKegiatan());
        usulan.setManfaatKegiatan(updatedUsulan.getManfaatKegiatan());
        usulan.setBentukPelaksanaanKegiatan(updatedUsulan.getBentukPelaksanaanKegiatan());
        usulan.setTargetPencapaianKegiatan(updatedUsulan.getTargetPencapaianKegiatan());
        usulan.setWaktuDanTempatPelaksanaan(updatedUsulan.getWaktuDanTempatPelaksanaan());
        usulan.setRencanaAnggaranKegiatan(updatedUsulan.getRencanaAnggaranKegiatan());
        //usulan.setIdPanitiaPeserta(updatedUsulan.getIdPanitiaPeserta());
        usulan.setIdTertibAcara(updatedUsulan.getIdTertibAcara());
        usulan.setPerlengkapan(updatedUsulan.getPerlengkapan());
        usulan.setPenutup(updatedUsulan.getPenutup());
        usulan.setPostinganKegiatan(updatedUsulan.getPostinganKegiatan());
        usulan.setDokumentasiKegiatan(updatedUsulan.getDokumentasiKegiatan());
        usulan.setTabulasiHasil(updatedUsulan.getTabulasiHasil());
        usulan.setFakturPembayaran(updatedUsulan.getFakturPembayaran());
        usulan.setStatus(updatedUsulan.getStatus());
        usulan.setValidasiPembina(updatedUsulan.getValidasiPembina());
        usulan.setRoles(updatedUsulan.getRoles());
        usulan.setFile(updatedUsulan.getFile());
        // usulan.setUpdatedAt(updatedUsulan.getUpdatedAt());
        // usulan.setCreatedAt(updatedUsulan.getCreatedAt());
        return usulanRepository.save(usulan);
    } else {
        throw new NoSuchElementException("Usulan not found with id: " + id);
    }
}
}