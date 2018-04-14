<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar  navbar-dark navbar-expand-lg" style="width:100%; background-color: #563d7c">
          
          <a class="navbar-brand" href="test.html">
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
          <a class="dropdown-item" href="usedcar.html">Used Car</a>

        </div>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="sellcar.html">Sell Car</a>
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
          <a class="dropdown-item" href="videos.html">Car Videos</a>

        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         More
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Service</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Helpline Numbers</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">FAQs</a>

        </div>
      </li>
           
      </ul>
      <form class="form-inline">
    &nbsp;&nbsp;<input class="form-control mr-sm-2" type="text" placeholder="Search Car" aria-label="Search">
    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
  </form>

  </div>
    </nav>
    <br>

<div class="d-flex flex-row">
  <div class="p-2">        
  <img src="images/car1.jpg" class="img-rounded" alt="Cinque Terre" width="400" height="300"> 
  </div>
  <div class="p-2">        
  <img src="images/car2.jpg" class="img-rounded" alt="Cinque Terre" width="400" height="300"> 
  </div>
  <div class="p-2">        
  <img src="images/car3.jpg" class="img-rounded" alt="Cinque Terre" width="400" height="300"> 
  </div>  
</div>
          <jsp:include page="footer.jsp"/>  

</body>
</html>