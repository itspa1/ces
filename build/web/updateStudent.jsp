<%-- 
    Document   : updateStudent
    Created on : 7 Oct, 2017, 8:53:35 PM
    Author     : pk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student Details</title>
        <script src="js/jquery-3.2.1.min.js"></script>
    </head>
    <body>
                <h2>Update your student details</h2>
        
        <form action="createStudent" method="post">
            <span>USN </span><input type="text" name="usn" placeholder="USN"><br><br>
            <span>Class</span>
            <select id="select" name="class">
                <option value="0">Select</option>
            </select><br><br>
            <input type="hidden" name="username" value="${sessionScope.username}"/> 
            <input type="submit" value="Submit" />
            <input type="reset" value="Reset" />
        </form>
        
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
