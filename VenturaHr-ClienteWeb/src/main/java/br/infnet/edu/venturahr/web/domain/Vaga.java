package br.infnet.edu.venturahr.web.domain;

import java.util.List;

public class Vaga {
    private Integer id;
    private String cargo;
    private String cidade;
    private String tipoDeContrato;
    private Integer usuarioId;
    private List<Criterio> CriterioList;

    public Vaga(List<Criterio> criterioList) {
        CriterioList = criterioList;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getTipoDeContrato() {
        return tipoDeContrato;
    }

    public void setTipoDeContrato(String tipoDeContrato) {
        this.tipoDeContrato = tipoDeContrato;
    }

    public Integer getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(Integer usuarioId) {
        this.usuarioId = usuarioId;
    }

    public List<Criterio> getCriterioList() {
        return CriterioList;
    }

    public void setCriterioList(List<Criterio> criterioList) {
        CriterioList = criterioList;
    }

    @Override
    public String toString() {
        return "Vaga{" +
                "id=" + id +
                ", cargo='" + cargo + '\'' +
                ", cidade='" + cidade + '\'' +
                ", tipoDeContrato='" + tipoDeContrato + '\'' +
                '}';
    }
}
