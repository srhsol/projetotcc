/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

/**
 *
 * @author Sarah Saraçol
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Animal.findAll", query = "SELECT a FROM Animal a"),
    @NamedQuery(name = "Animal.findFilter", query = "SELECT a FROM Animal a WHERE a.nome like :filtro OR a.genero like :filtro OR a.tipo like :filtro OR a.idade like :filtro")
})
public class Animal implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    private String nome;
    private String descricao;
    private String endFoto1;
    private String endFoto2;
    private String endFoto3;
    private String idade;
    private String genero;
    private String tipo; //gato ou cachorro
    private Boolean adotado;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getEndFoto1() {
        return endFoto1;
    }

    public void setEndFoto1(String endFoto1) {
        this.endFoto1 = endFoto1;
    }

    public String getEndFoto2() {
        return endFoto2;
    }

    public void setEndFoto2(String endFoto2) {
        this.endFoto2 = endFoto2;
    }

    public String getEndFoto3() {
        return endFoto3;
    }

    public void setEndFoto3(String endFoto3) {
        this.endFoto3 = endFoto3;
    }
    
    public String getIdade() {
        return idade;
    }

    public void setIdade(String idade) {
        this.idade = idade;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Boolean getAdotado() {
        return adotado;
    }

    public void setAdotado(Boolean adotado) {
        this.adotado = adotado;
    }

}
