package br.infnet.edu.venturahr.web.service;

import br.infnet.edu.venturahr.web.domain.Vaga;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@FeignClient(url = "http://localhost:8082/vagas", name = "vagaService")
public interface VagaService {

    @GetMapping(value = "/usuario/{usuarioId}")
    List<Vaga> listarVagaPorUsuarioId(@PathVariable Integer usuarioId);

    @PostMapping
    Vaga publicarVaga(Vaga vaga);

    @GetMapping(value = "/")
    List<Vaga> listarVagas();
}