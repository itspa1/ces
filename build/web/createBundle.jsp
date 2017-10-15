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
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/jquery.modal.min.js" type="text/javascript" charset="utf-8"></script>
        <link rel="stylesheet" href="css/jquery.modal.min.css" type="text/css" media="screen" />
    </head>
    <body>
        <h2 align="center">Add questions form</h2>
        <div id="main" class="modal" style="display:none;" >
            <form method="post" action="createBundle" id="modal">
                <input type="hidden" name="username" value="${sessionScope.username}">
                <span>Select Class </span>
                <select id="select" name="class">
                <option value="0">Select</option>
                </select><br><br>
                <input type="submit" value="Submit" />
                <input type="reset" value="Reset" />
            </form>    
        </div>
                <a href="#main" data-modal>Form</a>
                <div id="sub" class="modal" style="display: none;">
                    Content to do
                </div>        
    </body>
    <script>
        $(document).ready(function(){
            $('a[data-modal]').click(function(event){
                $(this).modal();
                return false; //to reset the url back
            });      
           $.ajax({url: "classes",type: "post",success: function(response){
              response = JSON.parse(response);
              //console.log(response);
              $.each(response,function(key,value){
                  $(value).each(function(index,val){
                     var option = $("<option>",{value: val,text: val});
                     $("#select").append(option);
                  });
              });
           }});
        });
        var form = $("#modal");
        form.submit(function(){ 
           $.ajax({
               type: form.attr('method'),
               url: form.attr('action'),
               data: form.serialize(),
               success: function(response){
                   //$("#main").empty();
                   //$("#main").html(response);
                   $("#sub").modal();
               }
           }); 
           return false;//to stop redirect
        });
        
    </script>
</html>
