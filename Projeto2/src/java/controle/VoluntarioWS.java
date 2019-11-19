/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.VoluntarioDAO;
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
import modelo.Voluntario;
import modelo.Voluntario;

/**
 *
 * @author Sarah Saraçol
 */
@WebServlet(name = "VoluntarioWS", urlPatterns = {"/public/voluntario/VoluntarioWS"})
public class VoluntarioWS extends HttpServlet {
    private VoluntarioDAO dao;
    private Voluntario obj;
    private String pagina;
    private String acao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        acao = request.getParameter("acao");
        List<Voluntario> lista = null;
        String id;
        switch (String.valueOf(acao)) {
            case "list":
                dao = new VoluntarioDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(VoluntarioWS.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    lista = dao.listar();
                }
                //pra onde deve ser redirecionada a página
                //passar a listagem para a página
                request.setAttribute("lista", this.listaVoluntario());
                pagina = "../admin/voluntario/voluntario-lista.jsp";
                break;
            case "del":
                id = request.getParameter("id");
                dao = new VoluntarioDAO();
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
                dao = new VoluntarioDAO();
                Voluntario obj = dao.buscarPorChavePrimaria(Long.parseLong(id));
                request.setAttribute("obj", obj);
                pagina = "../admin/voluntario/edita.jsp";
                break;
            case "listVoluntario":
                request.setAttribute("voluntario", this.listaVoluntario());

                try {
                    lista = this.listaVoluntario();

                } catch (Exception ex) {
                    Logger.getLogger(VoluntarioWS.class.getName()).log(Level.SEVERE, null, ex);
                }
                request.setAttribute("lista", lista);
                pagina = "../admin/voluntario/voluntario-lista.jsp";
                break;
            default:
                dao = new VoluntarioDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(VoluntarioWS.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    lista = dao.listar();
                }
                //pra onde deve ser redirecionada a página
                pagina = "../admin/voluntario/voluntario-lista.jsp";
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
        request.setCharacterEncoding("UTF-8");
        String msg;
        //verificar campos obrigatórios
        if (request.getParameter("txtNome") == null) {
            msg = "Campos obrigatórios não informados";
        } else {
            dao = new VoluntarioDAO();
            obj = new Voluntario();
            //preencho o objeto com o que vem do post

            Boolean deucerto;

            //se veio com a chave primaria então tem q alterar
            if (request.getParameter("txtId") != null) {
                obj = dao.buscarPorChavePrimaria(Long.parseLong(request.getParameter("txtId")));
                obj.setNome(request.getParameter("txtNome"));
                obj.setEmail(request.getParameter("txtEmail"));
                obj.setEndereco(request.getParameter("txtEndereco"));
                deucerto = dao.alterar(obj);
                pagina = "../admin/voluntario/edita.jsp";
            } //adiciona
            else {
                obj.setNome(request.getParameter("txtNome"));
                obj.setEmail(request.getParameter("txtEmail"));
                obj.setEndereco(request.getParameter("txtEndereco"));
                deucerto = dao.incluir(obj);
                request.setAttribute("msg", "Voluntário cadastrado!");
                pagina = "../voluntario/voluntario.jsp";
            }
            if (deucerto) {
                msg = "Operação realizada com sucesso";
            } else {
                msg = "Erro ao realizar a operação";
            }
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
    
    private List<Voluntario> listaVoluntario() {
        VoluntarioDAO dao = new VoluntarioDAO();
        List<Voluntario> voluntarios = dao.listar();
        dao.fecharConexao();
        return voluntarios;
    }

}
