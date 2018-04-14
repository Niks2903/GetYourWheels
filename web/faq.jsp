<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

<script> 
$(document).ready(function(){
    $("#con1").click(function(){
        $("#mov1").slideDown("slow");
    });
});

$(document).ready(function(){
    $("#con2").click(function(){
        $("#mov2").slideDown("slow");
    });
});

$(document).ready(function(){
    $("#con3").click(function(){
        $("#mov3").slideDown("slow");
    });
});

$(document).ready(function(){
    $("#con4").click(function(){
        $("#mov4").slideDown("slow");
    });
});

</script>

<style> 
.con {
    padding: 5px;
    text-align: center;
    background-color: #ADD8E6;
    border: solid 1px #c3c3c3;
}

.mov {
    border: solid 1px #c3c3c3;    
    text-align: center;
    padding: 50px;
    display: none;
     background-color: #E6E6FA;
}
</style>

</head>
<body style="background-color: white">
        <jsp:include page="headerhome.jsp"/>  

   
<center><img src="images/faq.jpg" align="center" style="width:500px;height:250px;"></center>
    
    <br><br>
    


    <div id="con1" class="con"><h3>New car Purchase</h3></div>   
    <div id="mov1" class="mov">
    Buying a new car? Want help? Find some expert advice on how to select the best car for your requirements.
</div>

    <div id="con2" class="con"><h3>Used car Purchase</h3></div>   
<div id="mov2" class="mov">
   Used car buying is a very complicated process, so who better than CarWale as your guide? Here are few steps and guidelines to help you get the best deal.
</div>

    <div id="con3" class="con"><h3>Car Care</h3></div>   
<div id="mov3" class="mov">
   Who does not enjoy a car that looks nice and works well? Know how to keep your car in its prime, what to look out for, when to service in this section.
</div>
    
    <div id="con4" class="con"><h3>Tyres & Wheels</h3></div>   
<div id="mov4" class="mov">
   Tyres are the only point of contact between the car and road, so even slightest deviation can directly affect performance, efficiency, comfort and even safety. Know your tyres better with the CarWale tyre guide.
</div>
    
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  
</body>
</html>
