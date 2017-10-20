<%-- 
    Document   : index
    Created on : 27 Sep, 2017, 10:14:28 PM
    Author     : pk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@taglib prefix="z" tagdir="/WEB-INF/tags" %>
<c:set var="page">
    <header class="masthead">
      <div class="header-content">
        <div class="header-content-inner">
          <h1 id="homeHeading">Your Favorite Source of Free Bootstrap Themes</h1>
          <hr>
          <p>Start Bootstrap can help you build better websites using the Bootstrap CSS framework! Just download your template and start going, no strings attached!</p>
          <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More</a>
        </div>
      </div>
    </header>
  
    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading text-white">We've got what you need!</h2>
            <hr class="light">
            <p class="text-faded">Start Bootstrap has everything you need to get your new website up and running in no time! All of the templates and themes on Start Bootstrap are open source, free to download, and easy to use. No strings attached!</p>
            <a class="btn btn-default btn-xl js-scroll-trigger" href="#services">Get Started!</a>
          </div>
        </div>
      </div>
    </section>
    <div class="container-fluid">
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
    </div>
    <a href="createBundle.jsp">Create/Add Questions</a>
</c:set>

<z:layout pageTitle="Index">
    <jsp:attribute name="content">
        ${page}
    </jsp:attribute>
</z:layout>