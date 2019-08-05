/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import modelo.Doacao;


/**
 *
 * @author dappo
 */
public class DoacaoDAO extends GenericDAO<Doacao, Long>{
    
    public DoacaoDAO(){
        super(Doacao.class);
    }
    
}
