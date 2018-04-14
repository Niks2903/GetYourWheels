<%-- 
    Document   : headerhome
    Created on : Oct 11, 2017, 9:27:34 PM
    Author     : ANIKET
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

    </head>
    <body>
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
          <a class="dropdown-item" href="usedcar.jsp">Used Car</a>

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
          <a class="dropdown-item" href="#">Car News</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">User Reviews</a>
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
          <a class="dropdown-item" href="#">Helpline Numbers</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="faq.jsp">FAQs</a>

        </div>
      </li>
           
      </ul>

 
 
    
  </div>
</nav>
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  
     
    </body>
</html>
