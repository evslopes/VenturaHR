package br.edu.infnet.web.controller;

import br.edu.infnet.web.model.domain.Usuario;
import br.edu.infnet.web.model.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes("user")
public class AcessoController {

    @Autowired
    private UsuarioService usuarioService;

    @GetMapping(value = "/")
    public String telaHome() {
        return "/home";
    }

    @GetMapping(value = "/acesso")
    public String formLogin() {
        return "/login";
    }

    @PostMapping(value = "/acesso/login")
    public String login(Model model, @RequestParam String email, @RequestParam String senha) {

        Usuario usuario = usuarioService.buscarPorEmail(email);

        if (usuario != null && email.equals(usuario.getEmail()) && senha.equals(usuario.getSenha())) {
            model.addAttribute("usuario", usuario);

            String inbox = null;

            if (usuario.getTipo() == Usuario.ADMINISTRADOR) {
                inbox = "/administrador/home";

            } else if (usuario.getTipo() == Usuario.CANDIDATO) {
                inbox = "/candidato/home";

            }
            return inbox;
        } else {
            model.addAttribute("msg", "Autenticacao invalida" + email);
        }

        return "/acesso/login";
    }

    @GetMapping(value = "/logout")
    public String logout(HttpSession session, SessionStatus status) {
        status.setComplete();
        session.removeAttribute("usuario");
        return "redirect:/acesso";
    }

}