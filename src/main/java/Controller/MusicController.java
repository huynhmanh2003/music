/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.MusicDAO;
import Model.Music;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Manh
 */
@WebServlet(name = "MusicController", urlPatterns = {"/MusicController"})
public class MusicController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String mname = request.getParameter("mname");
        String martist = request.getParameter("martist");
        String linktosong = request.getParameter("linktosong");
        String linktoimage = request.getParameter("linktoimage");
        double price = Double.parseDouble(request.getParameter("price"));
        MusicDAO m1 = new MusicDAO();
        m1.addMusic(new Music(0, mname, martist, price, linktoimage, linktosong));
        request.getRequestDispatcher("crud.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                try {
            String theCommand = request.getParameter("command");
            switch (theCommand) {
                case "LOAD":
                    loadMusic(request, response);
                    break;
                case "UPDATE":
                    updateMusic(request, response);
                    break;
                case "DELETE":
                    deleteMusic(request, response);
                    break;
            }
        } catch (Exception ex) {
            Logger.getLogger(MusicController.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("update-music-form.jsp").forward(request, response);
    }
 private void loadMusic(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        String musicID = request.getParameter("musicID");
        PrintWriter out = response.getWriter();
        out.print(musicID);
        Music m1 = MusicDAO.searchbyID(musicID);
        //place student in the request attribute
        request.setAttribute("Music", m1);
        //send to jsp page: update-student-form.jsp
       request.getRequestDispatcher("chuyenhuong").forward(request, response);
    }

    private void updateMusic(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        // read contact info from the form data
        int id = Integer.parseInt(request.getParameter("Musicid"));
        String getMusicName = request.getParameter("mname");
        String getArtist = request.getParameter("martist");
        String getLinkToSong = request.getParameter("linktosong");
        String getLinkToImage = request.getParameter("linktoimage");
        double price = Double.parseDouble(request.getParameter("price"));
        //create a new student object
        MusicDAO md = new MusicDAO();
        md.updateMusic(new Music(id, getMusicName, getArtist, price, getLinkToImage, getLinkToSong));
        request.getRequestDispatcher("crud.jsp").forward(request, response);
    }

    private void deleteMusic(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        //read student id from the form data
        int id = Integer.parseInt(request.getParameter("musicID"));
        MusicDAO m1 = new MusicDAO();
        m1.deleteMusic(id);
        request.getRequestDispatcher("crud.jsp").forward(request, response);
    }

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MusicController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MusicController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
