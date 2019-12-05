/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.ConteudoDAO;
import dao.ConteudoDAO;
import dao.VoluntarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Conteudo;
import modelo.Conteudo;
import modelo.Voluntario;

/**
 *
 * @author Sarah Saraçol
 */
@WebServlet(name = "ConteudoWS", urlPatterns = {"/admin/conteudo/ConteudoWS"})
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
                pagina = "conteudo.jsp";
                break;
            case "list":
                dao = new ConteudoDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(ConteudoWS.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    lista = dao.listar();
                }
                //pra onde deve ser redirecionada a página
                //passar a listagem para a página
                request.setAttribute("lista", this.listaConteudo());
                pagina = "../conteudo/conteudo-lista.jsp";
                break;
            case "del":
                id = request.getParameter("id");
                dao = new ConteudoDAO();
                //pagina = "../admin/voluntario/voluntario-lista.jsp";
                obj = dao.buscarPorChavePrimaria(Long.parseLong(id));
                Boolean deucerto = dao.excluir(obj);
                if (deucerto) {
                    lista = dao.listar();
                    request.setAttribute("lista", lista);
                    request.setAttribute("msg", "Excluído com sucesso");
                } else {
                    request.setAttribute("msg", "Erro ao excluir");
                }
                break;
            case "edit":
                id = request.getParameter("id");
                dao = new ConteudoDAO();
                Conteudo obj = dao.buscarPorChavePrimaria(Long.parseLong(id));
                request.setAttribute("obj", obj);
                pagina = "../conteudo/edita.jsp";
                break;
            case "listConteudo":
                request.setAttribute("conteudo", this.listaConteudo());

                try {
                    lista = this.listaConteudo();

                } catch (Exception ex) {
                    Logger.getLogger(ConteudoWS.class.getName()).log(Level.SEVERE, null, ex);
                }
                request.setAttribute("lista", lista);
                pagina = "../conteudo/conteudo-lista.jsp";
                break;
            default:
                dao = new ConteudoDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(ConteudoWS.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    lista = dao.listar();
                }
                //pra onde deve ser redirecionada a página
                pagina = "../conteudo/conteudo-lista.jsp";
                //passar a listagem para a página
                request.setAttribute("lista", lista);
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
        //verificar campos obrigatórios
        if (request.getParameter("txtConteudo") == null) {
            msg = "Campos obrigatórios não informados";
            pagina = "../conteudo/conteudo.jsp";
        } else {
            dao = new ConteudoDAO();
            obj = new Conteudo();
            //preencho o objeto com o que vem do post
            //Boolean deucerto;

            //se veio com a chave primaria então tem q alterar
            if (request.getParameter("txtId") != null) {
                obj = dao.buscarPorChavePrimaria(Long.parseLong(request.getParameter("txtId")));
                obj.setSobre(request.getParameter("txtConteudo"));
                deucerto = dao.alterar(obj);
                pagina = "../conteudo/edita.jsp";
            } //adiciona
            else {
                obj.setSobre(request.getParameter("txtConteudo"));
                deucerto = dao.incluir(obj);
                request.setAttribute("msg", "Conteudo cadastrado!");
                pagina = "../conteudo/conteudo.jsp";
            }
            if (deucerto) {
                msg = "Operação realizada com sucesso";
            } else {
                msg = "Erro ao realizar a operação";
            }
            dao.fecharConexao();
        }
        
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
    
        private List<Conteudo> listaConteudo() {
        ConteudoDAO dao = new ConteudoDAO();
        List<Conteudo> conteudos = dao.listar();
        dao.fecharConexao();
        return conteudos;
    }

}