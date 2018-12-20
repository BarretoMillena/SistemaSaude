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
public class arquivodopaciente {
    
    @Column (name = "ds_receita")
    private Integer receita; 
    
    @Column (name = "nr_diasdeconsulta")
    private Integer diasdeconsulta; 
    
    @Column (name = "ds_fichadopaciente")
    private Integer fichadopaciente; 
     
    @Column (name = "ds_exames")
    private Integer exames; 
}
