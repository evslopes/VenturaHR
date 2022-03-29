package br.infnet.edu.venturahr.web.service;

import br.infnet.edu.venturahr.web.domain.Usuario;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@FeignClient(url="http://localhost:8081/usuarios",name="usuarioService")
public interface UsuarioService {

    @GetMapping(value = "/email/{email}")
    Usuario buscarPorEmail(@PathVariable("email") String email);

    @GetMapping(value = "id/{id}")
    Usuario buscarPorId(String id);

    @PostMapping
    Usuario criarUsuario(Usuario usuario);
}
