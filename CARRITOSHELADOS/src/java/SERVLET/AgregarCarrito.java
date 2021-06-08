/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SERVLET;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Elitebook
 */
@WebServlet(name = "AgregarCarrito", urlPatterns = {"/AgregarCarrito"})
public class AgregarCarrito extends HttpServlet {

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
            
            HttpSession sesionuok = request.getSession();
            
            
            
            Vector<DCompra> vectorDetalle = null;
            
            //saber como esta el stok 
            
            Vector<MProducto> stockProducto = null;
            
            if(sesionuok.getAttribute("setalleVenta") != null){
            
                VectorDetalle = (Vector<DCompra>)sesionuok.getAtrtibute("detalleVenta");
                stockProducto = (Vector<MProducto>)sesionuok.getAtrribute("stockPrducto");
            }else{
                //no existe esa sesion y se crea por primera vez el carrito
                vectorDetalle = new Vector<DCompra>();
                stockProducto = new Vector<MProducto>();
                
            }
            
            //obtener que producto se esta seleccionando
            
            int codigo, cantidad;
            
            codigo = Integer.parseInt(request.getParameter("txtCodigo").trin());
            cantidad = Integer.parseInt(request.getParameter("txtCantidad").trin());
            
            MProducto = producto = new MProducto();
            
            producto = producto.buscarProducto(codigo);
            
            
            double subtotal = cantidad * producto.getPresio_producto();
            
            DCompras detallecompra = new DCompra();
            
            detallecompra.setid_dcompra
            
            
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AgregarCarrito</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AgregarCarrito at " + request.getContextPath() + "</h1>");
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
