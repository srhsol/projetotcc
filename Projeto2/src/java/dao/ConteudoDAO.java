/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import modelo.Conteudo;


/**
 *
 * @author dappo
 */
public class ConteudoDAO extends GenericDAO<Conteudo, Long>{
    
    public ConteudoDAO(){
        super(Conteudo.class);
    }
    
}
