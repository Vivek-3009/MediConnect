package com.virtusa.mediconnect.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/welcome")
public class WelcomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.getRequestDispatcher("/welcome.jsp").forward(req,resp);
//        ServletContext context = getServletContext();
//        String email = (String)context.getAttribute("email");
//        resp.setContentType("text/html");
//        PrintWriter pw = resp.getWriter();
//        pw.println("Email : "+email);
//        System.out.print(email);
//        req.getRequestDispatcher("/welcome.jsp").forward(req,resp);
        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("email") != null) {
            String email = (String) session.getAttribute("email");
            String role = (String) session.getAttribute("role");
            // Use email and role as needed

            req.getRequestDispatcher("/welcome.jsp").forward(req, resp);
        } else {
            resp.sendRedirect("login.jsp");
        }
    }

}
