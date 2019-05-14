<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
  <title>PizzaVala</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body style="background-image:url(resources/img21.jpg);background-attachment:fixed;">

<jsp:include page="/WEB-INF/views/header.jsp"/>
<br><br><br><br><br>
<div class="container">

<div class="about-section paddingTB60 gray-bg">
                <div class="container">
                    <div class="row">
						<div class="col-md-7 col-sm-6">
							<div class="about-title clearfix">
							
								<h1 style="color:white">About PizzaVala</h1>
								<p class="about-paddingB" style="color:white">It was the summer of 2009 when Yatendra and Sunanda decided to open a pizzeria. With mouth-watering pizzas prepared by the founders themselves, Pizza Vala soon became the most popular neighbourhood restaurant. From then to over 16,500 restaurants across the world today, we have come a long way.</p>
								<p style="color:white">Today, Pizza Vala is about much more than pizzas. From freshly sauteed pastas & delicious appetizers to mocktails, desserts, soups and salads, we have a wide range for you to feast on. All this, combined with the warm, inviting ambience and friendly service, will lead to endless conversations, laughter and memories that you'll cherish forever. So, let your hair down and feel at ease. Go ahead and enjoy the All New Pizza Vala experience!</p>
						<br><br><br><br><br>
						
						<div class="about-icons" > 
                            <ul style="display:inline-flex;padding-left:200px" type="none">
                                <li style="margin-right: 14%;"><a href="https://www.facebook.com/"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a> </li>
                                <li style="margin-right: 14%;"><a href="https://twitter.com/"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a> </li>
                                <li style="margin-right: 14%;"> <a href="https://plus.google.com/"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a> </li>
                                <li style="margin-right: 14%;"> <a href="https://inbox.google.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a> </li>
                            </ul>       
               
               
	           
	           
	        
	        </div>
							</div>
						</div>
						<div class="row">
  		<div class="col-md-5 col-sm-6">
  		<img src="resources/about.png" alt="pizza" style="width:100%;height:85%"></div>
							</div>
						</div>	
                    </div>
                </div>
            </div>
            <br><br><br><br><br>
           
            <jsp:include page="footer.jsp"/>
            </body>
            </html>