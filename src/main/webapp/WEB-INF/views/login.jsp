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
           
<title>Sign In</title>

</head>
<body style="text-align:center;background-image:url(resources/img21.jpg);background-attachment:fixed;background-repeat:no-repeat;">
<jsp:include page="/WEB-INF/views/header.jsp"/>
<br><br>
<div class="container">
    <div id="login-page" class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 style=color:white class="text-center login-title">Sign In to Pizza Vala</h1><br>
            <div class="account-wall">
                <img class="profile-img" src="resources/login.png" style="width:70%;height:34%" alt="">
                <h3 style="color:Red">${msg }</h3>
                <h3 style="color:Green">${msg1}</h3>
                <form action="perform_login" method="post" class="form-horizontal" >
                <div class="from-style">
                <input name="username" type="email" class="form-control" placeholder="Email" required="" />
                <br>
                
                <input name="password" type="password" class="form-control" placeholder="Password" required="" pattern="[A-za-z0-9]{8,}">
               
                <br>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                <button class="btn btn-lg btn-primary btn-block" type="reset" >Cancel</button>
                <br>
                <a href="goToRegister" class="text-center new-account" style=color:white >Create an account </a>
                 </div>
               
                </form>
            </div>
            
        
        </div>
        
    </div>
</div><br><br><br><br><br><br><br><br><br><br>
	

<jsp:include page="footer.jsp"/>

</body>
</html>