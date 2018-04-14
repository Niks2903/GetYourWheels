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
        <jsp:include page="headerhome.jsp"/>  

        
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images/ser4.jpg" alt="First slide" style="height: 500px;">
      <div class="carousel-caption d-none d-md-block">
        <h1>Your Car is Our Responsibility</h1>
        <h3>Better Price Best Service</h3>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/ser5.jpg" alt="Second slide" style="height: 500px;">
      <div class="carousel-caption d-none d-md-block">
        <h1>Get service At Your</h1>
        <h3>The Car That cares</h3>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/ser6.jpg" alt="Third slide" style="height: 500px;">
      <div class="carousel-caption d-none d-md-block">
        <h1>Skoda</h1>
        <h3>Skoda,Simply Clever</h3>
      </div>
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

 <div class="container"> 
     <br><h2>Service:</h2><br>  
     <form action="ServiceServlet.do" method="post" required data-bv-notempty-message="Required">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputBrand4" class="col-form-label">Brand</label>
      <input type="text" class="form-control" name="carBrand" id="inputBrand4" placeholder=" Maruti Suzuki" required data-bv-notempty-message="Required">
    </div>
    <div class="form-group col-md-6">
      <label for="inputModel4" class="col-form-label">Model</label>
      <input type="text" class="form-control" name="carModel" id="inputModel4" placeholder=" Swift dzire vdi" required data-bv-notempty-message="Required">
    </div>
  </div>
     <br>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputNumber4" class="col-form-label">Number</label>
      <input type="text" class="form-control" name="carNumber" id="inputNumber4" placeholder="MH 04 BD 6423" required data-bv-notempty-message="Required">
    </div>
    <div class="form-group col-md-6">
      <label for="inputDatel4" class="col-form-label">Date</label>
      <input type="text" class="form-control" name="date" id="inputDate4" placeholder="DD/MM/YYYY" required data-bv-notempty-message="Required">
    </div>
  </div>  
     <br>
  <div class="form-group">
      <label class="mr-sm-2" for="inlineFormCustomSelect">Select Time slot</label>
      <select class="custom-select mb-2 mr-sm-2 mb-sm-0" name="time" id="inlineFormCustomSelect" required data-bv-notempty-message="Required">
        
        <option value="1">9AM - 11AM</option>
        <option value="2">11AM - 1PM</option>
        <option value="3">2PM - 4PM</option>
        <option value="4">4PM - 6PM</option>
      </select>
    </div>
     <br>
  <div class="form-group">
      <label class="mr-sm-2" for="inlineFormCustomSelect">Select Type of Service</label>
      <select class="custom-select mb-2 mr-sm-2 mb-sm-0" name="type" id="inlineFormCustomSelect"required data-bv-notempty-message="Required">
        
        <option value="1">Scheduled Maintainace</option>
        <option value="2">Brakes</option>
        <option value="3">Engine</option>
        <option value="4">Suspension</option>
        <option value="4">Fluids</option>
      </select>
    </div> 
     
     
     
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
 </div>
        <% Cookie cookies[] = request.getCookies();
    String str = null;
    for(Cookie c: cookies)
    {
        if(c.getName().equals("email"))
        {
          str = c.getValue();
        }
    }
    System.out.print(str);
 %>
 <%= str %>
            <jsp:include page="footer.jsp"/>  

       <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>