/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.EventoDAO;
import dao.EventoDAO;
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
import modelo.Evento;
import modelo.Evento;
import util.FormataData;

/**
 *
 * @author Sarah Saraçol
 */
@WebServlet(name = "EventoWS", urlPatterns = {"/admin/evento/EventoWS", "/public/EventoWS"})
public class EventoWS extends HttpServlet {

    private EventoDAO dao;
    private Evento obj;
    private String pagina;
    private String acao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        acao = request.getParameter("acao");
        List<Evento> lista = null;
        String id;
        switch (String.valueOf(acao)) {
            case "list":
                dao = new EventoDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(EventoWS.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    lista = dao.listar();
                }
                //passar a listagem para a página
                request.setAttribute("lista", this.listaEvento());
                //pra onde deve ser redirecionada a página
                pagina = "evento-lista.jsp";
                break;
            case "del":
                id = request.getParameter("id");
                dao = new EventoDAO();
                pagina = "evento-lista.jsp";
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
                dao = new EventoDAO();
                Evento obj = dao.buscarPorChavePrimaria(Long.parseLong(id));
                request.setAttribute("obj", obj);
                pagina = "edita.jsp";
                break;
                case "listEvento":
                request.setAttribute("evento", this.listaEvento());

                try {
                    lista = this.listaEvento();

                } catch (Exception ex) {
                    Logger.getLogger(EventoWS.class.getName()).log(Level.SEVERE, null, ex);
                }
                request.setAttribute("lista", lista);
                pagina = "eventos.jsp";
                break;
            default:
                dao = new EventoDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(EventoWS.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    lista = dao.listar();
                }
                //pra onde deve ser redirecionada a página
                pagina = "evento-lista.jsp";
                //passar a listagem para a página
                request.setAttribute("lista", lista);
                break;

        }
        RequestDispatcher destino = request.getRequestDispatcher(pagina);
        destino.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String msg;
        //verificar campos obrigatórios
        if (request.getParameter("txtNome") == null) {
            msg = "Campos obrigatórios não informados";
        } else {
            dao = new EventoDAO();
            obj = new Evento();
            //preencho o objeto com o que vem do post

            Boolean deucerto;

            //se veio com a chave primaria então tem q alterar
            if (request.getParameter("txtId") != null) {
                obj = dao.buscarPorChavePrimaria(Long.parseLong(request.getParameter("txtId")));
                obj.setEndFoto(request.getParameter("txtFoto"));
                obj.setNome(request.getParameter("txtNome"));
                obj.setDescricao(request.getParameter("txtDescricao"));
                obj.setLocal(request.getParameter("txtLocal"));
                obj.setData(FormataData.formata(request.getParameter("txtData")));
                deucerto = dao.alterar(obj);
                pagina = "evento-ok.jsp";
            } 
            //adiciona
            else {
                obj.setEndFoto(request.getParameter("txtFoto"));
                obj.setNome(request.getParameter("txtNome"));
                obj.setDescricao(request.getParameter("txtDescricao"));
                obj.setLocal(request.getParameter("txtLocal"));
                obj.setData(FormataData.formata(request.getParameter("txtData")));
                deucerto = dao.incluir(obj);
                pagina = "evento-ok.jsp";
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

    private List<Evento> listaEvento() {
        EventoDAO dao = new EventoDAO();
        List<Evento> eventos = dao.listar();
        dao.fecharConexao();
        return eventos;
    }
}
