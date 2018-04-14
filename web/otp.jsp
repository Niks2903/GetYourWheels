<%-- 
    Document   : otp
    Created on : Oct 12, 2017, 6:07:16 PM
    Author     : ANIKET
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="newpassword.jsp">
           <br>
           
           <div class="form-group">
            <label for="fullname" class="col-form-label" >OTP :</label>
            <input type="text" class="form-control" id="fullName" name="otp" placeholder="Full Name" onblur="validateNonEmpty(this, document.getElementById('fullName_help'))">
            <br>
            <span id="fullName_help" class="help"></span>
           </div>
  
            <br>
            <input type="hidden" name="gotp" value=${user.otp} />
            <button type="submit" class="btn btn-primary" onclick="">Check OTP</button>
            ${user.otp}
        </form>
      
          
    </body>
</html>
