package br.infnet.edu.venturahr.web.controller;

import br.infnet.edu.venturahr.web.domain.Usuario;
import br.infnet.edu.venturahr.web.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;

    @GetMapping(value = "/usuario")
    public String formUsuario() {
        return "/app/cadastro";
    }

    @PostMapping(value = "/usuario/cadastro")
    public String criarUsuario(Model model, Usuario usuario) {
        usuarioService.criarUsuario(usuario);
        model.addAttribute("usuario", usuario);

        String inbox = null;

        if (usuario.getTipo() == Usuario.ADMINISTRADOR || usuario.getTipo() == Usuario.CANDIDATO ||
                usuario.getTipo() == Usuario.EMPRESA) {
            inbox = "redirect:/acesso";
        }
        return inbox;
    }


}