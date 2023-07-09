package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.PeriodeMpt;
import com.example.demo.service.PeriodeMptService;

import io.swagger.v3.oas.annotations.parameters.RequestBody;

@RestController
@RequestMapping("/periode_mpt")
public class PeriodeMptController {
    private final PeriodeMptService periodeMptService;

    @Autowired
    public PeriodeMptController(PeriodeMptService periodeMptService) {
        this.periodeMptService = periodeMptService;
    }

    @GetMapping
    public List<PeriodeMpt> getAllPeriodeMpt() {
        return periodeMptService.getAllPeriodeMpt();
    }

    @GetMapping("/{id}")
    public PeriodeMpt getPeriodeMptById(@PathVariable Long id) {
        return periodeMptService.getPeriodeMptById(id);
    }

    @PostMapping
    public PeriodeMpt createPeriodeMpt(@RequestBody PeriodeMpt periodeMpt) {
        return periodeMptService.createPeriodeMpt(periodeMpt);
    }

    @PutMapping("/{id}")
    public PeriodeMpt updatePeriodeMpt(@PathVariable Long id, @RequestBody PeriodeMpt updatedPeriodeMpt) {
        return periodeMptService.updatePeriodeMpt(id, updatedPeriodeMpt);
    }

    @DeleteMapping("/{id}")
    public boolean deletePeriodeMpt(@PathVariable Long id) {
        return periodeMptService.deletePeriodeMpt(id);
    }
}
