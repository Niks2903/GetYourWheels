/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import model.SendOTP;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import model.CustomerMasterDAO;
import model.SendSms;
import model.User;
/**
 *
 * @author ANIKET
 */
@WebServlet(name = "OTPServlet", urlPatterns = {"/OTPServlet"})
public class OTPServlet extends HttpServlet {

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
            /*out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OTPServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OTPServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
            //String userNameButton = request.getParameter("userNameButton");
            //String otpButton = request.getParameter("otpButton");
           // String submitButton =request.getParameter("submitButton");
            
            String userName = request.getParameter("userName");
            
            CustomerMasterDAO cdao = new CustomerMasterDAO();
            User user = new User();
            user = cdao.findUser(userName);
            String phoneNo = user.getPhoneNo();
            
            SendOTP  sotp = new SendOTP();
            int lotp = sotp.generateOTP();
            
            user.setOtp(lotp);
           // SendSms sms = new SendSms();
           // sms.sendSms(lotp, phoneNo);
            
            RequestDispatcher view=request.getRequestDispatcher("/forgotpassword.jsp");
            request.setAttribute("user", user);
            view.forward(request,response);
            System.out.println("Request to otp.jsp  otp is:"+lotp);
            
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
