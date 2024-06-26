package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/servlet/contact")
public class Contact extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        // form.jspにフォワード
        request.getRequestDispatcher("/jsp/form.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String user = request.getParameter("user");
    	request.setAttribute("user", user);
    	request.getRequestDispatcher("/jsp/contact.jsp").forward(request, response);
    	
//        request.setCharacterEncoding("UTF-8");
//
//        // contact.jspにフォワード
//        request.getRequestDispatcher("/jsp/contact.jsp").forward(request, response);
    }
}