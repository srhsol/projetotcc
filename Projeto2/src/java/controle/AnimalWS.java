/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.AnimalDAO;
import dao.AnimalDAO;
import dao.AnimalDAO;
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
import modelo.Animal;
import modelo.Animal;
import util.FormataData;

/**
 *
 * @author Sarah Saraçol
 */
@WebServlet(name = "AnimalWS", urlPatterns = {"/admin/animal/AnimalWS"})
public class AnimalWS extends HttpServlet {

    private AnimalDAO dao;
    private Animal obj;
    private String pagina;
    private String acao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        acao = request.getParameter("acao");
        List<Animal> lista = null;
        String id;
        
        switch(String.valueOf(acao)){
            case "add":
                pagina = "animal.jsp";
                break;
            case "del":
                id = request.getParameter("id");
                dao = new AnimalDAO();
                pagina = "animal-lista.jsp";
                obj = dao.buscarPorChavePrimaria(Long.parseLong(id));
                Boolean deucerto = dao.excluir(obj);
                if(deucerto){   
                    request.setAttribute("lista", this.listaAnimal());
                    request.setAttribute("msg", "Excluído com sucesso");
                }
                else{
                    request.setAttribute("msg", "Erro ao excluir");
                }
                break;
            case "edit":
                id = request.getParameter("id");
                dao = new AnimalDAO();
                Animal obj = dao.buscarPorChavePrimaria(Long.parseLong(id));
                request.setAttribute("obj", obj);
                pagina = "edita.jsp";
                break;
            case "detalhe":
                dao = new AnimalDAO();
                Animal animal = dao.buscarPorChavePrimaria(Long.parseLong(request.getParameter("id")));
                request.setAttribute("obj", animal);
                pagina = "detalhe.jsp";
                break;
            case "list":
                dao = new AnimalDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(AnimalWS.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    lista = dao.listar();
                }
                //passar a listagem para a página
                request.setAttribute("lista", this.listaAnimal());
                //pra onde deve ser redirecionada a página
                pagina = "animal-lista.jsp";
                break;
            default:
                dao = new AnimalDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(AnimalWS.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    lista = this.listaAnimal();
                }
                //pra onde deve ser redirecionada a página
                pagina = "animal-lista.jsp";
                //passar a listagem para a página
                request.setAttribute("lista", lista);
                break;
        }
        
        /*
        switch (String.valueOf(acao)) {
            case "list":
                request.setAttribute("genero", this.listaGenero());
                dao = new AnimalDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(AnimalWS.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    lista = dao.listar();
                }
                //passar a listagem para a página
                request.setAttribute("lista", this.listaAnimal());
                //pra onde deve ser redirecionada a página
                pagina = "animal-lista.jsp";
                break;
            case "del":
                id = request.getParameter("id");
                dao = new AnimalDAO();
                pagina = "animal-lista.jsp";
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
                dao = new AnimalDAO();
                Animal obj = dao.buscarPorChavePrimaria(Long.parseLong(id));
                request.setAttribute("obj", obj);
                request.setAttribute("genero", this.listaGenero());
                pagina = "edita.jsp";
                break;
            default:
                dao = new AnimalDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(AnimalWS.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    lista = dao.listar();
                }
                //pra onde deve ser redirecionada a página
                pagina = "index.jsp";
                //passar a listagem para a página
                request.setAttribute("lista", lista);
                break;

        }
        */
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
            dao = new AnimalDAO();
            obj = new Animal();
            //preencho o objeto com o que vem do post

            Boolean deucerto;

            //se veio com a chave primaria então tem q alterar
            if (request.getParameter("txtId") != null) {
                obj = dao.buscarPorChavePrimaria(Long.parseLong(request.getParameter("txtId")));
                obj.setEndFoto1(request.getParameter("txtFoto1"));
                obj.setEndFoto2(request.getParameter("txtFoto2"));
                obj.setEndFoto3(request.getParameter("txtFoto3"));
                obj.setNome(request.getParameter("txtNome"));
                obj.setDescricao(request.getParameter("txtDescricao"));
                obj.setGenero(request.getParameter("txtGenero")); //é declarado la em cima
                
                deucerto = dao.alterar(obj);
                pagina = "animal-ok.jsp";
            } 
            //adiciona
            else {
                obj.setEndFoto1(request.getParameter("txtFoto1"));
                obj.setEndFoto2(request.getParameter("txtFoto2"));
                obj.setEndFoto3(request.getParameter("txtFoto3"));
                obj.setNome(request.getParameter("txtNome"));
                obj.setDescricao(request.getParameter("txtDescricao"));
                obj.setGenero(request.getParameter("txtGenero"));
                deucerto = dao.incluir(obj);
                pagina = "animal-ok.jsp";
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

    private List<Animal> listaAnimal() {
        AnimalDAO dao = new AnimalDAO();
        List<Animal> animals = dao.listar();
        dao.fecharConexao();
        return animals;
    }
    
}
