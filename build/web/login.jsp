<%-- 
    Document   : login
    Created on : 20 Oct, 2017, 4:17:30 PM
    Author     : pk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="z" tagdir="/WEB-INF/tags" %>

<c:set var="page">
    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <form method="post" action="login">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Login Information</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Not Registered??<a href="registration.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
          </div>
        </div>
      </div>
    </section>
</c:set>
<z:layout pageTitle="Login">
    <jsp:attribute name="content">
        ${page}
    </jsp:attribute>
</z:layout>
