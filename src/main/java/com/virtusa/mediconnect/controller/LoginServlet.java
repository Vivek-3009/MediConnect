package com.virtusa.mediconnect.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.virtusa.mediconnect.utility.DBUtil;
import com.virtusa.mediconnect.utility.PasswordHasher;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/login.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id;
		String role = req.getParameter("role");
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		try (Connection connection = DBUtil.getConnection()) {
			String hashedPassword = PasswordHasher.hashPassword(password);
			String sql = "";
			if (role.equals("patient")) {
				sql = "SELECT * FROM patients WHERE email = ? AND password = ?";
			} else if (role.equals("doctor")) {
				sql = "SELECT * FROM doctors WHERE email = ? AND password = ?";
			} else {
				// Invalid role
				req.setAttribute("error", "Invalid role selected.");
				req.getRequestDispatcher("login.jsp").forward(req, resp);
				return;
			}

			try (PreparedStatement statement = connection.prepareStatement(sql)) {
				statement.setString(1, email);
				statement.setString(2, hashedPassword);
				try (ResultSet resultSet = statement.executeQuery()) {
					if (resultSet.next()) {
						// Authentication succeeded
						HttpSession session = req.getSession();
						id = resultSet.getInt("id");
						session.setAttribute("id", id);
						session.setAttribute("email", email);
						session.setAttribute("role", role);
						resp.sendRedirect("welcome");
					} else {
						// Authentication failed
						req.setAttribute("error", "Invalid email or password");
						req.getRequestDispatcher("login.jsp").forward(req, resp);
					}
				}
			}
		} catch (SQLException | NoSuchAlgorithmException e) {
			// Handle database connection, SQL errors, or hashing errors
			e.printStackTrace();
			req.setAttribute("error", "An error occurred while processing your request.");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
	}
}
