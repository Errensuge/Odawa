/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.text.DateFormatSymbols;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.ArrayList;

import Models.*;
import Controller.*;
import static Utils.Utilitaires.*;


/**
 *
 * @author Alistreaza
 */
public class Restaurant extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RestaurantJ r = RestaurantManager.GetRestaurant(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("Restaurant",r);
        request.setAttribute("Comments",CommentManager.GetCommentByRestaurant(r.getId()));
        GregorianCalendar calendar = new GregorianCalendar();
        DateFormatSymbols symbols = new DateFormatSymbols(Locale.FRENCH);
        int day = calendar.get(Calendar.DAY_OF_WEEK);
        request.setAttribute("day",day);
        String nomJour = symbols.getWeekdays()[day];
        request.setAttribute("nomJour",nomJour);
        ArrayList<String> ListNomJour = returnNomJour();
        request.setAttribute("ListNomJour",ListNomJour);
        request.getRequestDispatcher("/ODA-INF/Restaurant.jsp").forward(request,response);
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
        CommentJ cm = new CommentJ();
        cm.setCommentaire(request.getParameter("comm"));
        cm.setIdUtilisateur(Integer.parseInt(request.getParameter("idutl")));
        cm.setIdRestaurant(Integer.parseInt(request.getParameter("idrest")));
        CommentManager.Add(cm);
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
