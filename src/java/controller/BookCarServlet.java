/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Car;
import model.CustomerMasterDAO;
import model.SendEmail;

/**
 *
 * @author ANIKET
 */
@WebServlet(name = "BookCarServlet", urlPatterns = {"/BookCarServlet"})
public class BookCarServlet extends HttpServlet {

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
         
                    String cusId = null;
                    String emailId = null;
                    for(Cookie c: cookies)
                    {
                        if(c.getName().equals("cusId"))
                        {
                            cusId = c.getValue();
                        }
                        
                        if(c.getName().equals("email"))
                        {
                            emailId = c.getValue();
                        }

                    }
                    
                    int carId = Integer.parseInt(request.getParameter("carId"));
                    int page = Integer.parseInt(request.getParameter("page"));
                    //String brand=request.getParameter("brand");
                    //String years = request.getParameter("years");
                    //String km = request.getParameter("km");
                    //String eprice = request.getParameter("eprice");
                    //String image = request.getParameter("image");
                    
                    //Car car = new Car();
                    //car.setService(Integer.parseInt(cusId),model,brand,Double.parseDouble(years),Double.parseDouble(km),Double.parseDouble(eprice)/*,image*/);
                    System.out.print("In Servlet");
                    
                    SendEmail ldao=new SendEmail();
                    ldao.BookedMail(emailId);
                     
                    //System.out.println(user.getUserName());
                    //request.setAttribute("user", user);
                    CustomerMasterDAO cdao = new CustomerMasterDAO();
                    
                   if(page==2)
                   {
                    
                        if(cdao.bookCar(carId,Integer.parseInt(cusId)))
                        {
                            RequestDispatcher view=request.getRequestDispatcher("/SeeProfileServlet.do");
                            view.forward(request,response);
                            //out.println("You have been successfully registered");
                        }
                        else
                        {
                            out.println("Fail");
                        }
                   }
                   else
                   {
                        if(cdao.bookOldCar(carId,Integer.parseInt(cusId)))
                        {
                            RequestDispatcher view=request.getRequestDispatcher("/SeeProfileServlet.do");
                            view.forward(request,response);
                            //out.println("You have been successfully registered");
                        }
                        else
                        {
                            out.println("Fail");
                        }   
                   }
        
            
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
