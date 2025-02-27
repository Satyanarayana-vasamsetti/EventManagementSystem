<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 600px;
            margin-top: 100px;
            padding: 20px;
            background: white;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: center;
        }
        h1 {
            color: #007bff;
        }
        .nav-links a {
            margin: 10px;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome, <%= session.getAttribute("user") %></h1>
        <div class="nav-links mt-3">
            <a href="createEvent.jsp" class="btn btn-primary">Create Event</a>
            <a href="eventlist.jsp" class="btn btn-success">View Events</a>
            <a href="logout.jsp" class="btn btn-danger">Logout</a>
        </div>
    </div>
</body>
</html>