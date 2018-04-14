<%-- 
    Document   : newjsp
    Created on : Oct 6, 2017, 4:23:45 PM
    Author     : ANIKET
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <title>JSP Page</title> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $(".con").click(function(){
        $(".mov").slideDown("slow");
    });
});
</script>
<style>
    
    .mov{
        display: none;
    }
 </style>   
    </head>
    <body>
        
        <%-- 
    Document   : headerhome
    Created on : Oct 11, 2017, 9:27:34 PM
    Author     : ANIKET
--%>
        <%
                Cookie cookies[] = request.getCookies();
         
                    String cusId = null;
                    String userName = null;
                    String email = null;
                    for(Cookie c: cookies)
                    {
                        if(c.getName().equals("cusId"))
                        {
                            cusId = c.getValue();
                        }
                        
                        if(c.getName().equals("userName"))
                        {
                            userName = c.getValue();
                        }
                        
                        if(c.getName().equals("email"))
                        {
                            email = c.getValue();
                        }

                    }
        %>

  <jsp:include page="headerhome.jsp"/>  
         <br><br>
  <div class="container">
    <div class="card" style="width: 20rem;">
  <img class="card-img-top" src="images/th.jpg" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title">You entered Wrong data</h4>
    <a href="home.jsp" class="btn btn-primary">Try Again</a>
  </div>
</div>
  </div>
      
  <jsp:include page="footer.jsp"/>  

    </body>
</html>
