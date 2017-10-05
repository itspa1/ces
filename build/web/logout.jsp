<%-- 
    Document   : logout
    Created on : 15 Sep, 2017, 7:10:20 AM
    Author     : pk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% session.setAttribute("userid",null);
    session.invalidate();
    response.sendRedirect("index.jsp");
    out.print("Logged out successfully");%>