<%-- 
    Document   : newpassword
    Created on : Oct 12, 2017, 6:30:33 PM
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
        
         <jsp:include page="header.jsp"/>  

        
        <% if(Integer.parseInt(request.getParameter("otp")) != Integer.parseInt(request.getParameter("gotp")) ) {System.out.println(" "+request.getParameter("gotp"));  %>
        <jsp:forward page="sellcar.jsp"></jsp:forward>
        
        <% } %>
        
        <form action="ChangePasswordServlet.do" method="post">
            <br>
        
            <div class="form-group">
            <label for="fullname" class="col-form-label" >New Password :</label>
            <input type="password" class="form-control" id="fullName" name="newPassword" placeholder="New Password" onblur="validateNonEmpty(this, document.getElementById('fullName_help') )">
            <br>
            <span id="fullName_help" class="help"></span>
           </div>
            <input type="hidden" name="userName" value=<%= request.getParameter("userName")%> />
            <button type="submit" class="btn btn-primary">Submit</button>
                
        </form>

    <jsp:include page="footer.jsp"/>  
        
    </body>
</html>
