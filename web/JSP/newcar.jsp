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
    $("#flip").click(function(){
        $("#panel").slideDown("slow");
    });
});
</script>
    </head>
    <body>
     <jsp:include page="header.jsp"/>  

        
    <div class="d-flex flex-row">
    <c:forEach var="car" items="${addlist}">

        <div class="p-2"> 
        <div class="card border-info mb-3" style="width: 20rem;">
            <img class="card-img-top" src=${car.image} >
            <div class="card-body">
                <h4 class="card-title">${car.brand}</h4><h5 class="card-title">${car.modelName}</h5>
                <h5>${car.price} Lakhs onwards</h5>
                <br>
            <a href="#" class="btn btn-success">Add to Cart</a>&nbsp;&nbsp;
            <a href="#" class="btn btn-outline-success">Book</a>&nbsp;&nbsp;
    
            <div id="detailbutton" >Details</div>
    
            <div>
                Seating capacity : ${car.seatingCapacity}
                Mileage : ${car.milege}
                Fuel Type : ${car.fuelType}
                Vehicle Type : ${car.vehicleType}
            </div>
    
            </div>
        </div>
        </div>
        </c:forEach>
        </div>
     HIIIIIIIII
        
       
    </body>
</html>
