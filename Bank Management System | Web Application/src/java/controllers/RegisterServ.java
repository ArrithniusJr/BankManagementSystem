package controllers;

import Beans.RegisterBean;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RegisterServ extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username=request.getParameter("uname");
        String mail=request.getParameter("mail");
        String mailcon=request.getParameter("mailconf");
        int contacts=Integer.parseInt(request.getParameter("phoneno"));
        String password=request.getParameter("pword");
        String passcon=request.getParameter("pwordconf");
        int Accnumber = Integer.parseInt(request.getParameter("accno"));

        RegisterBean register = new RegisterBean();
        register.setUsername(username);
        register.setPassword(password);
        register.setEmail(mail);
        register.setCellphone(contacts);
        register.setAccount(Accnumber);
        
        RegisterBean [] regBean = new RegisterBean[10];
        regBean[0] = register;
        
        HttpSession hs = request.getSession(true);
        hs.setAttribute("RG", regBean);
        RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
        rd.forward(request, response);
        
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url="jdbc:derby://localhost:1527/Registration";
            Connection conn = DriverManager.getConnection(url, "Arrith", "12345");
            java.sql.Statement stmt=conn.createStatement();
            String query="INSERT INTO USERS VALUES('"+username+"', '"+password+"', '"+mail+"', '"+contacts+"', '"+Accnumber+"'))";
            stmt.execute(query);
        }
        catch(ClassNotFoundException clex){
            clex.printStackTrace();
        }
        catch(SQLException sqlex) {
            sqlex.printStackTrace();
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
