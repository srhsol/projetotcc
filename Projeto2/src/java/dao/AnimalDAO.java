/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import modelo.Animal;


/**
 *
 * @author dappo
 */
public class AnimalDAO extends GenericDAO<Animal, Long>{
    
    public AnimalDAO(){
        super(Animal.class);
    }
    
}
