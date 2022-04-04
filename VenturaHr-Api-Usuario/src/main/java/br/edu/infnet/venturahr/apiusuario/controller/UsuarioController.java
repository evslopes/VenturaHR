package br.edu.infnet.venturahr.apiusuario.controller;

import br.edu.infnet.venturahr.apiusuario.model.domain.Usuario;
import br.edu.infnet.venturahr.apiusuario.model.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = {"/usuarios"})
public class UsuarioController {

    @Autowired
    private UsuarioRepository usuarioRepository;

    public Usuario buscarPorId(Integer id){
        Usuario resposta = null;
        try{
            resposta = usuarioRepository.findById(id).get();

        } catch(Exception e){

        }
        return resposta;

    }

    @GetMapping(path = {"/id/{id}"})
    public ResponseEntity pegarPorId(@PathVariable Integer id){
        ResponseEntity resposta = ResponseEntity.notFound().build();
        Usuario usuario = this.buscarPorId(id);
        if (usuario != null){
            resposta = ResponseEntity.ok().body(usuario);

        }
        return resposta;
    }

    @GetMapping(path = {"/email/{email}"})
    public ResponseEntity pegarPorEmail(@PathVariable String email){
        ResponseEntity resposta = ResponseEntity.notFound().build();
        try {
            Usuario usuario = usuarioRepository.findByEmail(email);
            if (usuario != null){
                resposta = ResponseEntity.ok().body(usuario);
            }
        } catch (Exception e){

        }
        return resposta;
    }

    @PostMapping
    public ResponseEntity cadastrarUsuario(@RequestBody Usuario usuario){
        ResponseEntity resposta = ResponseEntity.notFound().build();
        if (usuario != null && usuario.getId() == null){
            Usuario usuarioCadastrado = usuarioRepository.save(usuario);
            resposta = ResponseEntity.status(HttpStatus.CREATED).body(usuarioCadastrado);
        }
        return resposta;
    }

    @PatchMapping("/alterar")
    public ResponseEntity alterarUsuario (@RequestBody Usuario usuario){
        ResponseEntity retorno = ResponseEntity.badRequest().build();

        if(usuario != null && usuario.getId()!=null){
            Usuario usuarioGravado = usuarioRepository.findById(usuario.getId()).get();

            if(usuarioGravado != null){
                try {
                    usuarioGravado = usuarioRepository.save(usuario);
                    retorno = ResponseEntity.ok().body(usuarioGravado);
                } catch (Exception e) {
                }
            }

        }
        return retorno;
    }
}