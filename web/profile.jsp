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
             
    
     
    <div class="card" style="width: 20rem;">
        <div class="card-body">
          <p class="card-text">UserName: <%= userName %> <br>
              Email: <%= email %> <br></p>
        </div>
    </div>
        <br>
        <h3>My Cars</h3>
    <div class="d-flex flex-row">
    <c:forEach var="car" items="${addlist}">
        <form action="BookCarServlet.do" method="post">
            
            <div class="p-2"> 
        
                <div class="card border-info mb-3" style="width: 20rem;">
            
                    <img class="card-img-top" src=${car.image} >
            
                    <div class="card-body">
                
                        <h4 class="card-title">${car.brand}</h4><h5 class="card-title">${car.modelName}</h5>
                
                        <h5>${car.price} Lakhs onwards</h5>
                
                        <br>
            
                        
            
                        <!--<a href="#" class="btn btn-outline-success">Book</a>&nbsp;&nbsp;
    
            
                        <button type="submit" class="btn btn-primary btn-sm">Book</button>  -->
    
                        <br>
                        <a href="#" class="con" >Detail</a>&nbsp;&nbsp;
                        
                        <div class="mov">
                            Seating capacity : ${car.seatingCapacity}<br>
                            Mileage : ${car.milege}<br>
                            Fuel Type : ${car.fuelType}<br>
                            Vehicle Type : ${car.vehicleType}<br>
                        </div>
                    <input type="hidden" name="carId" value=${car.carId} />
                    <input type="hidden" name="page" value="2" />
            </div>
        </div>
        </div>
    </form>     
        </c:forEach>
    </div>
        
        
      
             <jsp:include page="footer.jsp"/>  

    </body>
</html>
