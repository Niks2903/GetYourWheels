<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
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
    <style>
        span{
            color: red;
        }
    </style>
  </head>
  <body>
      
   <jsp:include page="headerhome.jsp"/>  

      
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000">
  <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
  </ol>
  <div class="carousel-inner">
      <div class="carousel-item active">
      <img class="d-block w-100" src="images\car6.jpg" alt="Second slide" style="height:640px;">
    </div>
      <div class="carousel-item">
      <img class="d-block w-100" src="images/car5.jpg" alt="Second slide" style="height:640px;">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/car4.jpg" alt="First slide" style="height:640px;">
    </div>
      <div class="carousel-item">
      <img class="d-block w-100" src="images/car7.jpg" alt="Second slide" style="height:640px;">
    </div>
    
    <div class="carousel-item">
      <img class="d-block w-100" src="images/car1.jpg" alt="Third slide" style="height:640px;">
    </div>
      
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<% Cookie cookies[] = request.getCookies();
    String str = null;
    String cusId = null;
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
    }
 %>
 <%= str %>
 <%= cusId %>
      <jsp:include page="footer.jsp"/>  

   


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>