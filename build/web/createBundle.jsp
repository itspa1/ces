<%-- 
    Document   : createBundle
    Created on : 8 Oct, 2017, 9:18:50 PM
    Author     : pk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Questions</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.8.2/jquery.modal.min.js" type="text/javascript" charset="utf-8"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.8.2/jquery.modal.min.css" type="text/css" media="screen" />
    </head>
    <body>
        <div>
            <h2 align="center">Add questions form</h2>
            <form method="post" action="createBundle">
                <input type="hidden" name="username" value="${sessionScope.username}">
                <span>Select Class </span>
                <select id="select" name="class">
                <option value="0">Select</option>
                </select><br><br>
                <input type="submit" value="Submit" />
                <input type="reset" value="Reset" />
            </form>
        </div>
    </body>
    <script>
        $(document).ready(function(){
           $.ajax({url: "classes",type: "post",success: function(response){
              response = JSON.parse(response);
              $.each(response,function(key,value){
                  $(value).each(function(index,val){
                     var option = $("<option>",{value: val,text: val});
                     $("#select").append(option);
                  });
              });
           }});
        });
        
    </script>
</html>
