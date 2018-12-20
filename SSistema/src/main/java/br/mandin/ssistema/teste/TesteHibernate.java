/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mandin.ssistema.teste;



import br.mandin.ssistema.SessaoHibernate;
import br.mandin.ssistema.entidades.pacientes;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author luizcanf
 */
public class TesteHibernate {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        System.out.println("INICIANDO O HIBERNATE");
        Session sessao = SessaoHibernate.nova();
        
        System.out.println("CRIANDO O USUARIO");
        pacientes user = new pacientes();
        user.setNomecompleto("gpv@gmail.com");
        user.setSenha("macae");
        user.setEmail("99917524");
        user.setDtnasc("NEIN");
        user.setConvenio("NEIN");
        user.setNumerofamilia("NEIN");
        
        System.out.println("SALVANDO USUARIO");
        Transaction tx = sessao.beginTransaction();
        sessao.save(user);
        tx.commit();
        System.out.println("USUARIO SALVO");
        sessao.close();
        System.out.println("SESSAO FECHADA");
    }
    
}
