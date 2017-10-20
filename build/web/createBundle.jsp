<%-- 
    Document   : createBundle
    Created on : 8 Oct, 2017, 9:18:50 PM
    Author     : pk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="z" tagdir="/WEB-INF/tags" %>

<c:set var="page">
        <div id="main" >
            <form method="post" action="createBundle" id="modal" class="modal" style="display:none;">
                <input type="hidden" name="username" value="${sessionScope.username}">
                <span>Enter Name or subject</span>
                <input type="text" name="name" placeholder="Enter Name or Subject"><br><br>
                <span>Select Class </span>
                <select id="select" name="class">
                <option value="0">Select</option>
                </select><br><br>
                <input type="submit" value="Submit" />
                <input type="reset" value="Reset" />
            </form>    
        </div>
                <a href="#modal" data-modal >Form</a>
                <div id="sub" class="modal" style="display: none;">
                    Content to do
                </div>
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
        form.on($.modal.AFTER_CLOSE,function(event,modal){
            form[0].reset();
        });
        </script>
</c:set>
                
<z:layout pageTitle="Create Bundle">
    <jsp:attribute name="content">
        ${page}
    </jsp:attribute>
</z:layout>