<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
 <title>Registration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
      
        <body style="background-image:url('resources/img006.jpg'); background-attachment:fixed;">
        
        <jsp:include page="header.jsp"/>
        <br><br><br><br>
	<div class="container-fluid" style="margin-left:36%;">       
  <h1 style="color:white;align:center">Registration Form</h1>
  <br>
  <form modelAttribute="user" action="addUserDetails" method="post" class="form-horizontal" >
  
  <div class="form-group" style="margin-bottom:20px; width:40%;">
      <label for="name" style="color:white;">Name:</label>
      <input name="name" type="text" class="form-control" id="name" placeholder="Enter name"
      			  required="" maxlength="25" pattern="[A-Za-z]+[ ]*[A-Za-z]*" />
    </div>
    
    <div class="form-group" style="margin-bottom:20px; width:40%;">
      <label for="email" style="color:white;">Email:</label>
      <input name="email" type="email" class="form-control" id="email" placeholder="Enter email" required="" />
    </div>
    
    <div class="form-group" style="margin-bottom:20px; width:40%;">
      <label for="phone" style="color:white;">Mobile no:</label>
      <input name="phone" type="text" class="form-control" id="ph" placeholder="Enter number"
     		 required="" pattern="[0-9]{10}" maxlength="10"/>
    </div>
  
    
    <div class="form-group" style="margin-bottom:20px; width:40%;">
      <label for="username" style="color:white;">Username:</label>
      <input name="username" type="text" class="form-control" id="username" placeholder="Enter name" required=""/>
    </div>
    
     <div class="form-group" style="margin-bottom:20px; width:40%;">
      <label for="pwd" style="color:white;">Password:</label>
      <input name="password" type="password" class="form-control" id="pwd" placeholder="Enter password" required="" pattern="[A-za-z0-9]{8,}"/>
    </div>
    
    
  <div class="form-group" style="margin-bottom:20px; width:40%;">
      <label for="address" style="color:white;">Address:</label>
      <textarea name="address" type="text" class="form-control" id="address" placeholder="Enter Address" required="" rows="5" maxlength="255"/></textarea>
    </div>
    
  
   
    <div class="checkbox">
      <label style="color:white;margin-left:25%;"><input type="checkbox" name="remember"> Remember me</label>
    </div><br>
    <button type="submit" class="btn btn-default" style="margin-left: 13%;"><b>Submit</b></button>
  </form>
</div>
</div></div></div>
<br><br><br><br><br><br>

<jsp:include page="footer.jsp"/>
</body>
           </html>