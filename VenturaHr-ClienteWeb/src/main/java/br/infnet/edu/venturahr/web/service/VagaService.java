package br.infnet.edu.venturahr.web.service;

import br.infnet.edu.venturahr.web.domain.Vaga;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@FeignClient(url = "http://localhost:8082/vagas", name = "vagaService")
public interface VagaService {

    @PostMapping
    Vaga publicarVaga(Vaga vaga);

    @GetMapping(value = "/usuario/{usuarioId}")
    List<Vaga> listarVagaPorUsuarioId(@PathVariable Integer usuarioId);

    @GetMapping(value = "/listar")
    List<Vaga> listarVagas();
}