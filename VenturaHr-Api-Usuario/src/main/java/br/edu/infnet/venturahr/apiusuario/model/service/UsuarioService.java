package br.edu.infnet.venturahr.apiusuario.model.service;

import br.edu.infnet.venturahr.apiusuario.model.domain.Usuario;
import br.edu.infnet.venturahr.apiusuario.model.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class UsuarioService {

    @Autowired
    private UsuarioRepository usuarioRepository;

    public Usuario autenticacao(String email, String senha){
        return usuarioRepository.autenticacao(email,senha);
    }

    public Usuario incluir(Usuario usuario) {
        usuarioRepository.save(usuario);
        return usuario;
    }

    public Collection<Usuario> obterLista(){
        return (Collection<Usuario>) usuarioRepository.findAll();
    }

    public Usuario obterPorId(Integer id) {
        return usuarioRepository.findById(id).orElse(null);
    }

    public void excluir(Integer id) {
        usuarioRepository.deleteById(id);
    }
}
