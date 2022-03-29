package br.infnet.edu.venturahr.web.controller;

import br.infnet.edu.venturahr.web.domain.Criterio;
import br.infnet.edu.venturahr.web.domain.Usuario;
import br.infnet.edu.venturahr.web.domain.Vaga;
import br.infnet.edu.venturahr.web.service.VagaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class VagaController {

    @Autowired
    private VagaService vagaService;

    @GetMapping("/postarVaga")
    public String formVaga() {
        return "/empresa/postarVaga";
    }

    @PostMapping(value = "/empresa/vaga")
    public ModelAndView cadastrarVaga(Vaga vaga, HttpServletRequest request) {
        ModelAndView resposta = new ModelAndView("/empresa/postarVaga");
        HttpSession session = request.getSession();
        ((HttpSession) session).setAttribute("vaga", vaga);
        return resposta;
    }

    @PostMapping(value = "/empresa/criterios")
    public ModelAndView cadastrarCriterios(Criterio criterio, HttpServletRequest request) {
        ModelAndView resposta = new ModelAndView("/empresa/postarVaga");
        HttpSession session = request.getSession();
        List criterios = (List) session.getAttribute("criterios");

        if (criterios == null) {
            criterios = new ArrayList<>();
        }
        criterios.add(criterio);
        session.setAttribute("criterios", criterios);
        return resposta;
    }

    @PostMapping(value = "/empresa/anunciarVaga")
    public String postarVaga(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        Vaga vaga = (Vaga) session.getAttribute("vaga");
        List criterios = (List) session.getAttribute("criterios");
        vaga.setCriterioList(criterios);
        vagaService.publicarVaga(vaga);
        List<Vaga> vagas = vagaService.listarVagaPorUsuarioId(usuario.getId());
        model.addAttribute("vagas", vagas);

        session.removeAttribute("vaga");
        session.removeAttribute("criterios");

        return "/empresa/home";
    }
}