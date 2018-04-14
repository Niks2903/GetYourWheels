/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CustomerMasterDAO;
import model.PasswordEncryption;
import model.User;


/**
 *
 * @author 7652
 */
public class LoginServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             String email = request.getParameter("email");
             String password = request.getParameter("password");
             PasswordEncryption pe = new PasswordEncryption();
             password = pe.encrypt(password);
             CustomerMasterDAO cdao = new CustomerMasterDAO();
             String cusId = cdao.checkLogin(email,password);
               if(cusId != null)
               {
                   out.write("Log in Successfull");
                   //RequestDispatcher view;
                   //view = request.getRequestDispatcher("/videos.jsp");
                   //view.forward(request,response);
                   Cookie cookie = new Cookie("email",email);
                   Cookie cook = new Cookie("cusId",cusId);
                   Cookie coo = new Cookie("userName",cdao.checkLogin1(email,password));
                   response.addCookie(cookie);
                   response.addCookie(cook);
                   response.addCookie(coo);
                   response.sendRedirect("home.jsp");
               }
               else
               {
                   response.sendRedirect("invaliduser.jsp");                   
               }
               System.out.println("cusId"+cusId);
        }
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
