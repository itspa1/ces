<%-- 
    Document   : login
    Created on : 15 Sep, 2017, 10:11:26 PM
    Author     : pk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="javax.sql.*" %>
<% 
    String username = request.getParameter("uname");
    String password = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ces",
            "root", "8277123123");
    Statement st = con.createStatement();
    String query = "select * from users where username='" + username + "' and password='" + password + "'";
    PreparedStatement psm = con.prepareStatement(query);
    ResultSet rs = psm.executeQuery();
    if(rs.next()){
        session.setAttribute("username",rs.getString(1));
        out.println("Welcome" + username);
        response.sendRedirect("index.jsp"); 
    }
    else{
        out.println("Invalid password/username");
        response.sendRedirect("login.html");
    }
    rs.close();
%>
