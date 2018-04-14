<%-- 
    Document   : headerhome
    Created on : Oct 11, 2017, 9:27:34 PM
    Author     : ANIKET
--%>

<%@page import="net.tanesha.recaptcha.ReCaptcha"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
    <%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>
        <title>JSP Page</title>
           <script type="text/javascript">
         function validateRegEx(regex, input, helpText, helpMessage) {
        // See if the input data validates OK
        if (!regex.test(input)) {
          // The data is invalid, so set the help message and return false
          if (helpText != null)
            helpText.innerHTML = helpMessage;
          return false;
        }
        else {
          // The data is OK, so clear the help message and return true
          if (helpText != null)
            helpText.innerHTML = "";
          return true;
        }
      }
       function validatePhone(inputField, helpText) {
        // First see if the input value contains data
        if (!validateNonEmpty(inputField, helpText))
          return false;

        // Then see if the input value is a phone number
        return validateRegEx(/^\d{10}$/,
          inputField.value, helpText,
          "Please enter a phone number (for example, 9587463210).");
      }

      function validateEmail(inputField, helpText) {
        // First see if the input value contains data
        if (!validateNonEmpty(inputField, helpText))
          return false;

        // Then see if the input value is an email address
        return validateRegEx(/^[\w\.-_\+]+@[\w-]+(\.\w{2,3})+$/,
          inputField.value, helpText,
          "Please enter an email address (for example, johndoe@acme.com).");
      }

      function validateNonEmpty(inputField, helpText) {
        // See if the input value contains any text
        return validateRegEx(/.+/,
          inputField.value, helpText,
          "Please enter a value.");
      }
      function Redirect(){
          window.location="http://localhost:8080/GetYourWheels/newsignup.html";
          alert("We're sorry but there is something wrong with the information.");
      }
      function placeOrder(form) {
        if (validateNonEmpty(form["fullName"], form["fullName_help"])&&
                validateNonEmpty(form["password4"], form["password4_help"])&&
                validateEmail(form["email4"], form["email4_help"])&&
                validatePhone(form["phone"], form["phone_help"])&&
                validateNonEmpty(form["address"], form["address_help"])){
           //Submit the order to the server
                form.submit();
          } 
          else {
               alert("We're sorry but there is something wrong with the information.");
              
          }
              
      }
      
      function placeOrderLogin(form) {
        if (validateNonEmpty(form["password"], form["password_help"])&&
                validateEmail(form["email"], form["email_help"])){
           //Submit the order to the server
                form.submit();
          } 
          else {
               alert("We're sorry but there is something wrong with the information.");
              
          }
           function checkLogin() {
                if (cusId == null || cusId.equals("q")){
           //Submit the order to the server
                alert("We're sorry but there is something wrong with the information.");
              
          } 
          else {
               //alert("We're sorry but there is something wrong with the information.");
              
          }
              
      }
    </script>   
    </head>
    <body>
        <% Cookie cookies[] = request.getCookies();
    String str = null;
    String cusId = null;
    String userName = null;
    for(Cookie c: cookies)
    {
        
        if(c.getName().equals("email"))
        {
          
          str = c.getValue();
        }
        if(c.getName().equals("cusId"))
        {
         cusId = c.getValue();
        }
        if(c.getName().equals("userName"))
        {
          userName = c.getValue();
        }
    }
 %>
        <nav class="navbar  navbar-dark navbar-expand-lg" style="width:100%; background-color: #563d7c">
          
          <a class="navbar-brand" href="home.jsp">
               Home
          </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="nav navbar-nav">
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Buy Car
          
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            
          <a class="dropdown-item" href="DisplayNewCarServlet.do">New Car</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="DisplayOldCarServlet.do">Used Car</a>

        </div>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="sellcar.jsp">Sell Car</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          News & Reviews
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="videos.jsp">Car Videos</a>

        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         More
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="service.jsp">Service</a>
         
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="faq.jsp">FAQs</a>

        </div>
      </li>
      <li class="nav-item" style="color: white">
        
      </li>
      
           
      </ul>
      
    

 
 <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
     
     <li>
 <% if(cusId == null || cusId.equals("q")){ %>
 <!-- Login -->     
<!-- Button trigger modal -->

 

&nbsp;&nbsp;  <button type="button" class="rounded-bottom" style="background-color: #FFB74D;" />
                      
      <jsp:include page="clock.jsp"></jsp:include>
</button>

   &nbsp;&nbsp;<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal">
  Login
</button>

        
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" style="background-color: #563d7c;">
        <h4 class="modal-title" id="exampleModalLabel" style="color: white;">Login :</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color: white;">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form action="LoginServlet.do" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Enter email" required data-bv-notempty-message="Required" >
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="password" name="password" placeholder="Password" required data-bv-notempty-message="Required"><br>
     <span id="password_help" class="help"></span>
  </div> 
          <div>
     <!--   <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#example2Modal" >Forgot password ?</button>-->
     <a href="forgotpassword.jsp" style="colr: white;">Forgot password ?</a>
        <button type="submit" class="btn btn-dark" onclick="placeOrderLogin(this.form)" style="background-color: #563d7c;">Login</button>
      </div>
      </form>   
      </div>
      
    </div>
  </div>
</div>
<!-- login Button ends -->
<!-- signup button -->
<!-- Button trigger modal -->
&nbsp;&nbsp;<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#example1Modal">
  SignUp
</button>

<!-- Modal -->
<div class="modal fade" id="example1Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" style="background-color: #563d7c;">
        <h4 class="modal-title" id="exampleModalLabel" style="color: white; ">SignUp :</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color: white;">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="RegistrationServlet.do" method="post">
  <div class="form-group">
    <label for="fullname" class="col-form-label" >Username :</label>
    <input type="text" class="form-control" id="fullName" name="userName" placeholder="Full Name" required data-bv-notempty-message="Required" onblur="validateNonEmpty(this, document.getElementById('fullName_help'))">
    <br>
     <span id="fullName_help" class="help"></span>
  </div>         
  
     <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4" class="col-form-label">Email :</label>
      <input type="email" class="form-control" id="email4" name="email" placeholder="Email" onblur="validateEmail(this, document.getElementById('email4_help'))" required data-bv-notempty-message="Required">
    
      <span id="email4_help" class="help"></span>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4" class="col-form-label">Password :</label>
      <input type="password" class="form-control" id="password4" name="password" placeholder="Password" required data-bv-notempty-message="Required">
      
      <span id="password4_help" class="help"></span>
    </div>
  </div>
      <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputAdd4" class="col-form-label">Address :</label>
      <input type="text" class="form-control" id="address" name="address" placeholder="Address" required data-bv-notempty-message="Required" >
      <br>
      <span id="address_help" class="help"></span>
    </div>
    <div class="form-group col-md-6">
      <label for="inputMobile4" class="col-form-label">Mobile No :</label>
      <input type="text" class="form-control" id="phone" name="mobileNo" placeholder="Mobile No" onblur="validatePhone(this, document.getElementById('phone_help'))" required data-bv-notempty-message="Required" >
      <br>
    </div>
  </div>     
  

  
  
    
  <div class="form-group">
    <%
          ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LcJDTYUAAAAAPrFcMjr4Mtg6Ur9NngA9tdUZZpY", "6LcJDTYUAAAAAL8uZ8UgMuD7-Jl9IxNUKDmDojl9", false);
          out.print(c.createRecaptchaHtml(null, null));
     %>
    <div class="form-check">
      
        <div>

        <button type="submit" class="btn btn-dark" onclick="placeOrder(this.form)" style="background-color: #563d7c;">Sign Up</button>
      </div>
    </div>
  </div>
            
      
      </form>
      </div>
    </div>
  </div>
</div>

<!-- signup Button ends -->

<!-- FP modal starts -->


<!-- Modal -->




<!-- FP modal ends -->
<%}
else{%>
     
     <li><a class="nav-link" href="SignOutServlet.do">Sign Out</a></li>&nbsp;&nbsp;
     <li style="color: white;"><a href="SeeProfileServlet.do"><%= userName %></a></li>
         <% } %>

 </li>
 
 </ul>

  </div>
</nav>
     
    </body>
</html>
