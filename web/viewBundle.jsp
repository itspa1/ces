<%-- 
    Document   : viewBundle
    Created on : 15 Oct, 2017, 9:37:45 PM
    Author     : pk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery-3.2.1.min.js"></script>
        <title>View Bundles</title>
    </head>
    <body>
        <% 
         String id = request.getParameter("id");
         Class.forName("com.mysql.jdbc.Driver");
         Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ces","root","8277123123");
         Statement st = con.createStatement();
         String query = "select * from bundles where id = " + id;
         ResultSet rs = st.executeQuery(query);
         rs.next();
        %>
        <h2 align="center"><%= rs.getString(4) %></h2>
        <% rs.close(); %>
    </body>
</html>
