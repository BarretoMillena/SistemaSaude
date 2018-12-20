/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.sistemasaude;

import javax.persistence.Column;

/**
 *
 * @author aluno
 */
public class calendario {
    
    
    @Column (name = "nm_descricao")
    private Integer descricao; 
    
    @Column (name = "dt_data")
    private Integer data; 
    
   
    
}
