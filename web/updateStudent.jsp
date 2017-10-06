<%-- 
    Document   : updateStudent
    Created on : 28 Sep, 2017, 7:27:36 PM
    Author     : pk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UpdateStudent</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
        <h2>Update your student details</h2>
        <button id="button">Button</button>
        <select id="select"></select>
    </body>
    
    <script>
        $(document).ready(function(){
           $.ajax({url: "classes",type: "post",success: function(response){
                   console.log(response);
           }});
        });
        
    </script>
</html>
