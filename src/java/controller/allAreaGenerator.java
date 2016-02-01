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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.allAreaService;

/**
 *
 * @author John
 */
@WebServlet(name = "allAreaGenerator", urlPatterns = {"/areaCalc"})
public class allAreaGenerator extends HttpServlet {

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
           String calcType = request.getParameter("calculator");
           if(calcType.equals("rectangle")){
                   String width = request.getParameter("width");
                   String length = request.getParameter("length");
                   allAreaService areaSrv = new allAreaService();

                   String responseMSG = areaSrv.getRecArea(width,length);

                   request.setAttribute("myRecMSG", responseMSG);
           }else if(calcType.equals("circle")){
                   String radius = request.getParameter("radius");
                   
                   allAreaService areaSrv = new allAreaService();

                   String responseMSG = areaSrv.getCirArea(radius);

                   request.setAttribute("myCirMSG", responseMSG);
           }else if(calcType.equals("triangle")){
                    String base = request.getParameter("base");
                    String height = request.getParameter("height");
                    
                       
                        allAreaService areaSrv = new allAreaService();

                         String responseMSG = areaSrv.getTriArea(base,height);

                         request.setAttribute("myTriMSG", responseMSG);
                    
                            
           }
           
           
          RequestDispatcher view = request.getRequestDispatcher("/areaCalculator.jsp");
           view.forward(request, response);
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
