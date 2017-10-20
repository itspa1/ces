<%-- 
    Document   : layout
    Created on : 19 Oct, 2017, 9:50:41 PM
    Author     : pk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%-- The list of normal or fragment attributes can be specified here: --%>
<%@ attribute name="pageTitle" required="true" type="java.lang.String" %>
<%@attribute name="content" fragment="true" %>

<c:set var="default">
         <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">CES</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <% if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) { %>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="login.jsp">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="registration.jsp">Register</a>
            </li>
            <% }else{ %>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger">Hola <%= session.getAttribute("username")%></a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="logout.jsp">Logout</a>
            </li>
            <% } %>
          </ul>
        </div>
      </div>
    </nav>

</c:set>
<%-- any content can be specified here e.g.: --%>
<html>
<head>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/creative.min.css" rel="stylesheet">
     <script src="js/jquery.modal.js" type="text/javascript" charset="utf-8"></script>
      <link rel="stylesheet" href="css/jquery.modal.css" type="text/css" media="screen" />
      <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/creative.min.js"></script>
    <title>${pageTitle}</title>
</head>
<body id="page-top">
      ${default}
     <jsp:invoke fragment="content"></jsp:invoke>
</body>
</html>
