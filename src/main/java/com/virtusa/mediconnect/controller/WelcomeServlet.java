package com.virtusa.mediconnect.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet("/welcome")
//@WebServlet("/patient_dashboard")
public class WelcomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session != null && session.getAttribute("email") != null) {
        	String name = (String) session.getAttribute("name");
            String email = (String) session.getAttribute("email");
            String role = (String) session.getAttribute("role");
            
            if ("patient".equals(role)) {
                // If the user is a patient, display patient dashboard
                req.getRequestDispatcher("/patient_dashboard.jsp").forward(req, resp);
            } else if ("doctor".equals(role)) {
                // If the user is a doctor, display doctor dashboard
                req.getRequestDispatcher("/doctor_dashboard.jsp").forward(req, resp);
            } else {
                // Handle other roles if necessary
                resp.sendRedirect("login.jsp");
            }
        } else {
            // If user is not logged in, redirect to login page
            resp.sendRedirect("login.jsp");
        }
    }
}