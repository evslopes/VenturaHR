package br.edu.infnet.venturahr.apiusuario.model.repository;

import br.edu.infnet.venturahr.apiusuario.model.domain.Usuario;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UsuarioRepository extends CrudRepository<Usuario,Integer> {
    Usuario findByEmail(String email);

    List<Usuario> findAll();
}

