package com.eventmanagement.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmanagement.database.DBConnection;

@WebServlet("/CreateEventServlet")
public class CreateEventServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String organizerName = (String) session.getAttribute("user");
        if (organizerName == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String date = request.getParameter("date");
        String location = request.getParameter("location");

        try {
            Connection conn = DBConnection.getConnection();
            String sql = "INSERT INTO events (title, description, date, location, organizer_id) VALUES (?, ?, ?, ?, (SELECT id FROM users WHERE name=?))";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, title);
            stmt.setString(2, description);
            stmt.setString(3, date);
            stmt.setString(4, location);
            stmt.setString(5, organizerName);
            stmt.executeUpdate();
            response.sendRedirect("dashboard.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("createEvent.jsp?error=1");
        }
    }
}