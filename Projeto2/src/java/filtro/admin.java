/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package filtro;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Admin;

/**
 *
 * @author dappo
 */
@WebFilter(filterName = "admin", urlPatterns = {"/admin/*"})
public class admin implements Filter {
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
            
        HttpSession session = ((HttpServletRequest)request).getSession();
        Admin admin = (Admin)session.getAttribute("admin");
        if(admin == null){
            admin = new Admin();
        }
        String path = ((HttpServletRequest)request).getRequestURI();
        
        if((path.startsWith("/Projeto2/admin/login")
                ||path.startsWith("/Projeto2/admin/assets/"))||(admin.getId()!=null)){
            chain.doFilter(request, response);
        }else{
            chain.doFilter(request, response);
            //request.setAttribute("msg","Você não está logado no sistema!");
            //((HttpServletResponse)response).sendRedirect("./login/login.jsp");
        }
        
    }

    
    @Override
    public void destroy(){
        
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }
}
