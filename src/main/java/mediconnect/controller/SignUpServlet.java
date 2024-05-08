package com.virtusa.mediconnect.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.virtusa.mediconnect.utility.DBUtil;
import com.virtusa.mediconnect.utility.PasswordHasher;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/signup.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String role = req.getParameter("role");
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String phoneNumber = req.getParameter("phone-number");

        String createPatientsTableSQL = "CREATE TABLE IF NOT EXISTS patients (" 
                                        + "patientID INT AUTO_INCREMENT PRIMARY KEY,"
                                        + "name VARCHAR(255) NOT NULL,"
                                        + "age INT NOT NULL,"
                                        + "userID INT,"
                                        + "foreign key(userID) references users(userID)"
                                        + ")";

        try (Connection connection = DBUtil.getConnection(); Statement statement = connection.createStatement()) {
            // Create patients table
            statement.execute(createPatientsTableSQL);
        } catch (SQLException e) {
            // Handle table creation error
            e.printStackTrace();
            req.setAttribute("error", "An error occurred while creating the table.");
            req.getRequestDispatcher("/signup.jsp").forward(req, resp);
            return;
        }

        try (Connection connection = DBUtil.getConnection()) {
            String hashedPassword = PasswordHasher.hashPassword(password);
            String insertSql = "INSERT INTO users (userName, userRole, phoneNumber, email, password) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(insertSql)) {
                statement.setString(1, name);
                statement.setString(2, role);
                statement.setString(3, phoneNumber);
                statement.setString(4, email);
                statement.setString(5, hashedPassword);
                statement.executeUpdate();
            }
        } catch (SQLException | NoSuchAlgorithmException e) {
            // Handle database connection, SQL errors, or hashing errors
            e.printStackTrace();
            req.setAttribute("error", "An error occurred while processing your request.");
            req.getRequestDispatcher("/signup.jsp").forward(req, resp);
            return;
        }

        HttpSession session = req.getSession();
        session.setAttribute("email", email);
        session.setAttribute("role", role);

        resp.sendRedirect("welcome");
    }
}
