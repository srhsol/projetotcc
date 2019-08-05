/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import modelo.Evento;


/**
 *
 * @author dappo
 */
public class EventoDAO extends GenericDAO<Evento, Long>{
    
    public EventoDAO(){
        super(Evento.class);
    }
    
}
