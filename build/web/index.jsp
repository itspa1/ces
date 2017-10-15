<%-- 
    Document   : index
    Created on : 27 Sep, 2017, 10:14:28 PM
    Author     : pk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/jquery.modal.js" type="text/javascript" charset="utf-8"></script>
        <link rel="stylesheet" href="css/jquery.modal.css" type="text/css" media="screen" />
        <title>Index</title>
    </head>
    <body>
        <h2 align="center" >Welcome</h2>
        <% if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) { %>
    You are not logged in<br/>
    <a href="registration.html">Register</a>
    <a href="login.html">Login</a>
        <%} else {%>    
    Welcome <%= session.getAttribute("username")%>
    <a href='logout.jsp'>Log out</a>
    <% } %><br><br>
    
    <% Class.forName("com.mysql.jdbc.Driver"); 
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ces","root","8277123123");
       Statement st = con.createStatement();
       String query = "select * from bundles";
       ResultSet rs = st.executeQuery(query);
       if(rs.next() == false){
    %>
    <p>No Bundles Yet.</p>
    <% } else { %>
    <h2>Listing Bundles</h2>
      <%  do{ %>
    <li><a href=<%="/course/viewBundle.jsp?id=" + rs.getInt(1)%>><%= rs.getString(4) %></a></li>
     <%     }while(rs.next());
            } 
        rs.close();%>
    <br>
    <a href="createBundle.jsp">Create/Add Questions</a>
    </body>
</html>
