<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>

<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
           <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
           
<title>PizzaVala</title>

</head>

<body style="text-align:center;background-image:url(resources/img27.jpg);background-attachment:fixed;" >

<jsp:include page="header.jsp"/>
		<br><br><br><br>
		<div class="container-fluid">
		
           
		
				   <div class="row main">
				   <div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 style="color:black">Contact Us</h1>
	               		<hr />
	               	</div>
	               	</div>
	            	</div> 
				
				<div class="row">
				<div class="col-sm-6 col-md-4 col-md-offset-4">
					<form>
			  			<div class="form-group">
			  				<label for="exampleInputUsername"><h4>Name</h4></label>
					    	<input type="text" class="form-control" id="" placeholder=" Enter Name">
				  		</div>
				  		<div class="form-group">
					    	<label for="exampleInputEmail"><h4>Email</h4></label>
					    	<input type="email" class="form-control" id="exampleInputEmail" placeholder=" Enter Email id">
					  	</div>	
					  	<div class="form-group">
					    	<label for="telephone"><h4>Mobile No.</h4></label>
					    	<input type="tel" class="form-control" id="telephone" placeholder=" Enter 10-digit mobile no.">
			  			</div>
			  		
			  		
			  			<div class="form-group">
			  				<label for ="description"><h4>Message</h4></label>
			  			 	<textarea  class="form-control" id="description" placeholder="Enter Your Message"></textarea>
			  			</div>
			  			
			  			<div class="form-group">

			  				<button type="button" class="btn btn-default submit"><i class="fa fa-paper-plane" aria-hidden="true"></i>  Send Message</button>
			  			</div>
			  			</form>
			  			</div>
					
				
			</div>
			
		
		
		
<br><br><br><br>

<div class="container" >
<h1>Contact Address</h1><br>
	<div class="row text-center">
		<div class="col-sm-3 col-xs-6 first-box">
        <h1><span class="glyphicon glyphicon-earphone"></span></h1>
        <h3>Phone</h3>
        <p>+91-987-6543210</p><br>
    </div>
    <div class="col-sm-3 col-xs-6 second-box">
        <h1><span class="glyphicon glyphicon-home"></span></h1>
        <h3>Location</h3>
        <p>Dwarka mor, 2nd floor, Tower-D, Sector-2, New Delhi</p><br>
    </div>
    <div class="col-sm-3 col-xs-6 third-box">
        <h1><span class="glyphicon glyphicon-send"></span></h1>
        <h3>E-mail</h3>
        <p>pizzavala@gmail.com</p><br>
    </div>
    <div class="col-sm-3 col-xs-6 fourth-box">
    	<h1><span class="glyphicon glyphicon-leaf"></span></h1>
        <h3>Web</h3>
        <p>www.pizzavala.com</p><br>
    </div>
	</div>
</div>
</div>

<jsp:include page="footer.jsp"/>

	</body>
</html>