<%-- 
    Document   : registration
    Created on : 14 Sep, 2017, 10:53:55 PM
    Author     : pk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%
    String name = request.getParameter("name");
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ces",
            "root", "8277123123");
    Statement st = con.createStatement();
    ResultSet rs;
    int i = st.executeUpdate("insert into users(name,username,password,email) values ('"+name+"','"+user+"','"+pwd+"','"+email+"')" );
    if (i > 0) {
        session.setAttribute("userid", user);
        response.sendRedirect("postRegister.html");
        out.print("Registration Successfull!");
    } else {
        response.sendRedirect("index.jsp");
        out.print("An error occured!!");
    }
%>
