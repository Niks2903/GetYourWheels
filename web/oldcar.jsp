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
 <jsp:include page="headerhome.jsp"/>  
          
        
    <div class="d-flex flex-row">
    <c:forEach var="car" items="${addlist}">
        <form action="BookCarServlet.do" method="post">
            <div class="p-2"> 
        
                <div class="card border-info mb-3" style="width: 20rem;">
            
            
                    <div class="card-body">
                
                        <h4 class="card-title">${car.brand}</h4><h5 class="card-title">${car.modelName}</h5>
                
                        <h5>${car.price}</h5>
                
                        <br>
            
                        <button type="submit" class="btn btn-primary btn-sm">Book</button>
    
                        <br>
                        <a href="#" class="con" >Detail</a>&nbsp;&nbsp;
                        
                        <div class="mov">
                            Seating capacity : ${car.seatingCapacity}<br> 
                            Mileage : ${car.milege}<br>
                            Fuel Type : ${car.fuelType}<br>
                            Years : ${car.noOfYears}<br>
                            Km : ${car.km}<br>
                            Seller Name : ${car.customerName}<br>
                            Contact : ${car.phoneNo}<br>
                        </div>
                        <input type="hidden" name="carId" value=${car.carId} />
                        <input type="hidden" name="page" value="1" />
                </div>
        </div>
        </div>
            </form>
        </c:forEach>
        </div>
        
             <jsp:include page="footer.jsp"/>  

    </body>
</html>
