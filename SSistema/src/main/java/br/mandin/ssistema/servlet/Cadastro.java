/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mandin.ssistema.servlet;



import br.mandin.ssistema.SessaoHibernate;
import br.mandin.ssistema.entidades.pacientes;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author luizcanf
 */
public class Cadastro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        System.out.println("RECEBENDO O USUARIO DO FORM HTML");
        pacientes user = new pacientes();
        user.setNomecompleto(request.getParameter("nomecompleto"));
        user.setSenha(request.getParameter("senha"));
        user.setEmail(request.getParameter("email"));
        user.setDtnasc(request.getParameter("dtnasc"));
        user.setConvenio(request.getParameter("convenio"));
        user.setNumerofamilia(request.getParameter("numerofamilia"));
        
        try {
        System.out.println("SALVANDO USUARIO");
        Session sessao = SessaoHibernate.nova();
        Transaction tx = sessao.beginTransaction();
        sessao.save(user);
        tx.commit();
        sessao.close();
        System.out.println("USUARIO SALVO");
        } catch (Exception ex) {
            ex.printStackTrace();
            response.sendRedirect("erro.html");
        }
        // redirecionar p outra página
        response.sendRedirect("index.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

