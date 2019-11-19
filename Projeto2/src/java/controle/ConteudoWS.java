/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.ConteudoDAO;
import dao.ConteudoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Conteudo;
import modelo.Conteudo;
import modelo.Conteudo;

/**
 *
 * @author Sarah Saraçol
 */
@WebServlet(name = "ConteudoWS", urlPatterns = {"/public/ConteudoWS"})
public class ConteudoWS extends HttpServlet {

    private Conteudo obj;
    private ConteudoDAO dao;
    private String sobrenos;
    private String pagina;
    private String acao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        acao = request.getParameter("acao");
        List<Conteudo> lista = null;
        String id;

        switch (String.valueOf(acao)) {
            case "add":
                pagina = "animal.jsp";
                break;
            case "edit":
                id = request.getParameter("id");
                dao = new ConteudoDAO();
                Conteudo obj = dao.buscarPorChavePrimaria(Long.parseLong(id));
                request.setAttribute("obj", obj);
                pagina = "edita.jsp";
                break;
        }
        RequestDispatcher destino = request.getRequestDispatcher(pagina);
        destino.forward(request, response);
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
        String msg;

        Boolean deucerto;
        //se veio com a chave primaria então tem q alterar
        if (request.getParameter("txtId") != null) {
            obj.setSobre(request.getParameter("sobre"));

            deucerto = dao.alterar(obj);
            pagina = "conteudo-ok.jsp";
        } //adiciona
        else {
            obj.setSobre(request.getParameter("sobre"));
            deucerto = dao.incluir(obj);
            pagina = "conteudo-ok.jsp";
        }
        if (deucerto) {
            msg = "Operação realizada com sucesso";
        } else {
            msg = "Erro ao realizar a operação";
        }
        dao.fecharConexao();
        request.setAttribute("msg", msg);
        RequestDispatcher destino = request.getRequestDispatcher(pagina);
        destino.forward(request, response);
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
