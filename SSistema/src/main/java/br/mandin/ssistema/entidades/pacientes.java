/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mandin.ssistema.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author aluno
 */
@Entity
public class pacientes {

    /**
     * @return the cod_pac
     */
    public int getCod_pac() {
        return cod_pac;
    }

    /**
     * @param cod_pac the cod_pac to set
     */
    public void setCod_pac(int cod_pac) {
        this.cod_pac = cod_pac;
    }
      
    @Id
    @GeneratedValue
    private int cod_pac;
    private String nomecompleto;
    private String senha;
    private String email;
    private String dtnasc;
    private String convenio;
    private String numerofamilia;



    /**
     * @return the nomecompleto
     */
    public String getNomecompleto() {
        return nomecompleto;
    }

    /**
     * @param nomecompleto the nomecompleto to set
     */
    public void setNomecompleto(String nomecompleto) {
        this.nomecompleto = nomecompleto;
    }

    /**
     * @return the senha
     */
    public String getSenha() {
        return senha;
    }

    /**
     * @param senha the senha to set
     */
    public void setSenha(String senha) {
        this.senha = senha;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the dtnasc
     */
    public String getDtnasc() {
        return dtnasc;
    }

    /**
     * @param dtnasc the dtnasc to set
     */
    public void setDtnasc(String dtnasc) {
        this.dtnasc = dtnasc;
    }

    /**
     * @return the convenio
     */
    public String getConvenio() {
        return convenio;
    }

    /**
     * @param convenio the convenio to set
     */
    public void setConvenio(String convenio) {
        this.convenio = convenio;
    }

    /**
     * @return the numerofamilia
     */
    public String getNumerofamilia() {
        return numerofamilia;
    }

    /**
     * @param numerofamilia the numerofamilia to set
     */
    public void setNumerofamilia(String numerofamilia) {
        this.numerofamilia = numerofamilia;
    }
    
    
   
    
                    
    
}
