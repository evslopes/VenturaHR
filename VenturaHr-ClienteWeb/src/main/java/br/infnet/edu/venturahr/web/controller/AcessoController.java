package br.infnet.edu.venturahr.web.controller;

import br.infnet.edu.venturahr.web.domain.Usuario;
import br.infnet.edu.venturahr.web.domain.Vaga;
import br.infnet.edu.venturahr.web.service.UsuarioService;
import br.infnet.edu.venturahr.web.service.VagaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@SessionAttributes("usuario")
public class AcessoController {

    @Autowired
    private UsuarioService usuarioService;

    @Autowired
    private VagaService vagaService;

    @GetMapping(value = "/")
    public String homePage() {

        return "/app/index";

    }

    @GetMapping(value = "/acesso")
    public String formLogin() {

        return "/app/login";
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

            } else {
                List<Vaga> vagas = vagaService.listarVagaPorUsuarioId(usuario.getId());
                model.addAttribute("vagas", vagas);
                inbox = "/empresa/home";
            }

            return inbox;
        } else {
            model.addAttribute("msg", "Autenticacao invalida para o usuario " + email);
        }

        return "/acesso/login";
    }

    @GetMapping(value="/home")
    public String telaVagas(@SessionAttribute("usuario") Usuario usuario, Model model){
        try{
            List<Vaga> vagas = vagaService.listarVagas();
            model.addAttribute("vagas", vagas);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }

        String destino = "";

        switch (usuario.getTipo()){
            case 'A':
                destino = "/candidato/home";
                break;
            case 'C':
                destino = "/candidato/home";

                try{
                    List<Vaga> vagasUser = vagaService.listarVagaPorUsuarioId(usuario.getId());
                    model.addAttribute("vagasUser", vagasUser);
                }catch(Exception e){
                    System.out.println(e.getMessage());
                }

                break;
            case 'E':
                destino = "/empresa/home";

                try{
                    List<Vaga> vagasUser = vagaService.listarVagaPorUsuarioId(usuario.getId());
                    model.addAttribute("vagasUser", vagasUser);
                }catch(Exception e){
                    System.out.println(e.getMessage());
                }

                break;
        }

        return destino;

    }

    @GetMapping(value = "/logout")
    public String logout(HttpSession session, SessionStatus status) {

        status.setComplete();
        session.removeAttribute("usuario");

        return "redirect:/acesso";
    }



}