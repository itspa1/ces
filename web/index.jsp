<%-- 
    Document   : index
    Created on : 27 Sep, 2017, 10:14:28 PM
    Author     : pk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2 align="center" >Welcome</h2>
        <% if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) { %>
    You are not logged in<br/>
    <a href="registration.html">Register</a>
    <a href="login.html">Login</a>
        <%} else {%>    
    Welcome <%= session.getAttribute("username")%>
    <a href='logout.jsp'>Log out</a>
    <% } %>
        
        
    </body>
</html>
