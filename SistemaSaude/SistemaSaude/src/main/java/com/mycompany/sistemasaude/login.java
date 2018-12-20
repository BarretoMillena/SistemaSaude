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
public class login {
    
    @Column (name = "ds_senha")
    private Integer senha; 
    
    @Column (name = "nm_nomecompleto")
    private Integer nomecompleto; 
    
    @Column (name = "ds_email")
    private Integer email; 
    
    @Column (name = "ds_convenio")
    private Integer convenio;
    
    @Column (name = "ds_numerofamilia")
    private Integer numerofamilia;
    
    
}
