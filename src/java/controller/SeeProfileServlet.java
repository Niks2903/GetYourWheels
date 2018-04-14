/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Car;
import model.CustomerMasterDAO;

/**
 *
 * @author ANIKET
 */
@WebServlet(name = "SeeProfileServlet", urlPatterns = {"/SeeProfileServlet"})
public class SeeProfileServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            
                    
                    System.out.println("Cars Added To List");
                    
                    Cookie cookies[] = request.getCookies();
         
                    String cusId = null;
                    for(Cookie c: cookies)
                    {
                        if(c.getName().equals("cusId"))
                        {
                            cusId = c.getValue();
                        }

                    }
                    
                    CustomerMasterDAO cdao = new CustomerMasterDAO();
                    ArrayList<Car> addlist = new ArrayList<>();
                    addlist = (ArrayList<Car>) cdao.bookedCars(Integer.parseInt(cusId));
                    
                    String model=request.getParameter("model");
                    //String image = request.getParameter("image");
                    
                    
                    request.setAttribute("addlist", addlist);
                    RequestDispatcher view;
                    view = request.getRequestDispatcher("/profile.jsp");
                    view.forward(request,response);
                    System.out.println("Request Sent");
                /*if( cdao.createAccount(user))
                {
                    out.println("You have been successfully registered");
                }
                else
                {
                    out.println("Fail");
                }*/
        
                    
                    //out.println(userName);
                    /*if(ldao.checkLogin(user))
                    {//out.println("welcome"+userName);
                       request.setAttribute("U", user);
                    RequestDispatcher view=request.getRequestDispatcher("success.jsp");
                    view.forward(request,response);
                    }
                    else
                        response.sendRedirect("index.html");
                   */
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
