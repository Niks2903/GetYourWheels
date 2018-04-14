/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SendEmail;
import model.User;
import model.CustomerMasterDAO;

/**
 *
 * @author universe
 */
public class ServiceServlet extends HttpServlet {

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
                    System.out.print("In Servlet");
                    Cookie cookies[] = request.getCookies();
         
                    String userId = null;
                    String email = null;
                    for(Cookie c: cookies)
                    {
                        if(c.getName().equals("cusId"))
                        {
                            userId = c.getValue();
                        }
                        
                        if(c.getName().equals("email"))
                        {
                            email = c.getValue();
                        }

                    }
                    
                    String carModel=request.getParameter("carModel");
                    String carBrand=request.getParameter("carBrand");
                    String carNumber=request.getParameter("carNumber");
                    String date=request.getParameter("date");
                    String time=request.getParameter("time");
                    String type=request.getParameter("type");
                    User user= new User();
                    user.setService(carModel,carBrand,carNumber,date,time,type,Integer.parseInt(userId),email);
                    System.out.print("In Servlet");
                    SendEmail ldao=new SendEmail();
                    ldao.ServiceMail(user);
                     
                    //System.out.println(user.getUserName());
                    //request.setAttribute("user", user);
                    
    
                    CustomerMasterDAO cdao = new CustomerMasterDAO();
                    if( cdao.createService(user))
                    {
                        out.println("You have been successfully registered");
                    }
                    else
                    {
                        out.println("Fail");
                    }
        
                    
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
