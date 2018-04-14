<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Sell Car</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

    </head>
    <body style="background-image: url(images/sell.jpg);">
       
        
       <jsp:include page="headerhome.jsp"/>

        <div>
        <div class="align-self-center" style="margin-top: 100px; margin-left: 30px;">
        <div class="card" style="width: 25rem;">
        <div class="card-header" align="center" style=" background-color: #563d7c; color: ivory; "><h3>Sell Car</h3>
        </div>
        <div class="card-body">
            <form action="SellCarServlet.do" method="post">
  <div class="form-group">
        <input type="text" class="form-control" placeholder="Car model" name="model" required data-bv-notempty-message="Required">
        <br>
        <input type="text" class="form-control" placeholder="Brand" name="brand" required data-bv-notempty-message="Required">
        <br>
        <input type="text" class="form-control" placeholder="No Of Years" name="years" required data-bv-notempty-message="Required">
        <br>
        <input type="text" class="form-control" placeholder="Number Of Km" name="km" required data-bv-notempty-message="Required">
        <br>
        <input type="text" class="form-control" placeholder="Expected Price" name="eprice" required data-bv-notempty-message="Required">
        <br>
        
  </div>
  
  <label class="form-check-label">
      <input type="checkbox" class="form-check-input" required data-bv-notempty-message="Required">
      Check me out
    </label>
  
  <button type="submit" class="btn btn-primary" style=" background-color: #563d7c; color: ivory; ">Submit</button>
</form>
            </div>
       
        </div>
        </div>
  
            
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      
      
      
<!--Footer-->
      <jsp:include page="footer.jsp"/>  

<!--/.Footer-->
</div>
        
        
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    
    </body>
</html>
