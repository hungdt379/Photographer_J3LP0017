/*
* GalleryController.java
*
* All Right Reserved
* Copyright (c) 2019 FPT University
 */
package controller;

import dao.GalleryDao;
import dao.PictureDao;
import entity.Gallery;
import entity.Picture;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * GalleryController.<br>
 *
 * <pre>
 * Class thực hiện hiển thị hình ảnh của các Gallery
 *
 * . processRequest.
 * . doGet
 * . doPost.
 *
 * </pre>
 *
 * @author dangt
 */
public class GalleryController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * Lấy thông tin của Gallery và truyền vào DB để lấy ra được những ảnh có id
     * trùng với id của Gallery
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        GalleryDao galleryDao = new GalleryDao();
        PictureDao pictureDao = new PictureDao();
        int gId = 0;
        // nếu gId khong phai Integer chuyển sang Error.jsp
        try {
            gId = Integer.parseInt((String) request.getParameter("id"));
        } catch (Exception e) {
            request.getRequestDispatcher("Error.jsp").forward(request, response);
        }
        GalleryDao galleryDAO = new GalleryDao();
        List<Gallery> galleries = galleryDAO.getGalleries();
        
        List<Picture> pictures = pictureDao.getPicturesByIds(gId);
        //if picture == null
        if (pictures.size()<=0) {
            request.getRequestDispatcher("Error.jsp").forward(request, response);
        }
        request.setAttribute("galleries", galleries);
        request.setAttribute("pictures", pictures);
        request.setAttribute("gId", gId);
        request.getRequestDispatcher("Gallery.jsp").forward(request, response);
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
