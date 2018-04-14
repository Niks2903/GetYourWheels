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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SendEmail;
import model.User;
import model.CustomerMasterDAO;
import model.PasswordEncryption;
import net.tanesha.recaptcha.ReCaptchaImpl;
import net.tanesha.recaptcha.ReCaptchaResponse;

/**
 *
 * @author universe
 */
public class RegistrationServlet extends HttpServlet {

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
            
                    
                    String remoteAddr = request.getRemoteAddr();
                    ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
                    reCaptcha.setPrivateKey("6LcJDTYUAAAAAL8uZ8UgMuD7-Jl9IxNUKDmDojl9");

                    String challenge = request.getParameter("recaptcha_challenge_field");
                    String uresponse = request.getParameter("recaptcha_response_field");
                    ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(remoteAddr, challenge, uresponse);

                    if (reCaptchaResponse.isValid()) {
                      out.print("Answer was entered correctly!");
                    

            
                    String userName=request.getParameter("userName");
                    String phoneNo=request.getParameter("mobileNo");
                    String email=request.getParameter("email");
                    String address=request.getParameter("address");
                    String password=request.getParameter("password");
                    PasswordEncryption pe = new PasswordEncryption();
                    password = pe.encrypt(password);
                    User user= new User();
                    user.setUser(userName,email,phoneNo,address,password);
                    SendEmail ldao=new SendEmail();
                    ldao.mail(user);
                    
                    System.out.println(user.getUserName());
                    //request.setAttribute("user", user);
                    CustomerMasterDAO cdao = new CustomerMasterDAO();
                if( cdao.createAccount(user))
                {
                    out.println("You have been successfully registered");
                }
                else
                {
                    response.sendRedirect("invaliduser.jsp"); 
                }
                
                 RequestDispatcher view=request.getRequestDispatcher("/home.jsp");
                 request.setAttribute("user", user);
                 view.forward(request,response);
                    
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
                else {
                      response.sendRedirect("invaliduser.jsp");
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
