<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  </head>
  <body>
    <jsp:include page="header.jsp"/>  

    <div class="container">
          <br><h2>Forgot Password:</h2><br>   
        <form action="OTPServlet.do">
          
           <div class="form-group">
            <label for="fullname" class="col-form-label" >Username :</label>
            <input type="text" class="form-control" id="fullName" name="userName" placeholder="${user.userName}" onblur="validateNonEmpty(this, document.getElementById('fullName_help'))">
            <br>
            <span id="fullName_help" class="help"></span>
           </div>
            
           <button type="submit" class="btn btn-primary">Get OTP</button>
           
        </form>
          
          
            <form action="newpassword.jsp" method="post">
           <br>
           
           <div class="form-group">
            <label for="fullname" class="col-form-label" >OTP :</label>
            <input type="text" class="form-control" id="fullName" name="otp" placeholder="" onblur="validateNonEmpty(this, document.getElementById('fullName_help'))">
            <br>
            <span id="fullName_help" class="help"></span>
           </div>
  
            <br>
            <input type="hidden" name="gotp" value=${user.otp} />
            <input type="hidden" name="userName" value=${user.userName} />
            
            
            <button type="submit" class="btn btn-primary" onclick="">Check OTP</button>
            ${user.otp}
        </form>
      
          
        
         
    </div>
     
    <jsp:include page="footer.jsp"/>  

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>