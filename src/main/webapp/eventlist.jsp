<%@page import="com.eventmanagement.database.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Event List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .table th, .table td {
            text-align: center;
        }
        .table th {
            background-color: #007bff;
            color: white;
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <%@ page import="java.sql.*"%>
    <div class="container">
        <h2 class="text-primary">Event List</h2>
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Date</th>
                        <th>Location</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    Connection conn = DBConnection.getConnection();
                    String sql = "SELECT * FROM events";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getString("title")%></td>
                        <td><%=rs.getString("description")%></td>
                        <td><%=rs.getDate("date")%></td>
                        <td><%=rs.getString("location")%></td>
                    </tr>
                    <%
                    }
                    rs.close();
                    stmt.close();
                    conn.close();
                    %>
                </tbody>
            </table>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
