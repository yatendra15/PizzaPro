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
<body>

<jsp:include page="header.jsp"/>

<div class="container-fluid">

<div id="myCarousel" class="carousel slide" data-ride="carousel" style="top:50px">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"> </li>
    <li data-target="#myCarousel" data-slide-to="2"> </li>
    <li data-target="#myCarousel" data-slide-to="3"> </li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="resources/img1.jpg" alt="pizza" style="width:100%;height:60%" >
    </div>

    <div class="item">
      <img src="resources/img2.jpg" alt="pizza" style="width:100%;height:60%">
    </div>

    <div class="item">
      <img src="resources/img3.jpg" alt="pizza" style="width:100%;height:60%">
    </div>
    
    <div class="item">
      <img src="resources/img8.jpg" alt="pizza" style="width:100%;height:60%">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<br><br><br><br>
						 
<!-- <hr style="margin-left: -15px;margin-right: -15px;"> 	 -->				 
						
		
<div class="container">
<div class="list-group-item list-group-item-success">

<center><h2><b>Veg</b></h2></center></div><br>
<div class="row">
  <div class="col-sm-4">
  
   <a href="${pageContext.request.contextPath }/admin/productDetailsByPid/4" >
  <h2 style="color:Black">Margherita</h2>
  <img src="resources/img5.jpg" border="0" alt="pizza" style="width:100%;height:40%" ></a></div>
  <div class="col-sm-4">
  
  <a href="${pageContext.request.contextPath }/admin/productDetailsByPid/35" >
  <h2 style="color:Black">Funghi</h2>
  <img src="resources/img6.jpg" alt="pizza" style="width:100%;height:40%"></a></div>
  <div class="col-sm-4">
  
  <a href="${pageContext.request.contextPath }/admin/productDetailsByPid/36" >
  <h2 style="color:Black">Capricciosa</h2>
  <img src="resources/img7.jpg" alt="pizza" style="width:100%;height:40%"></a></div>
</div>


<div class="row">
  <div class="col-sm-4">
  
  <a href="${pageContext.request.contextPath }/admin/productDetailsByPid/37" >
  <h2 style="color:Black">Quattro Stagioni</h2>
  <img src="resources/img8.jpg" alt="pizza" style="width:100%;height:40%"></a></div>
  <div class="col-sm-4">
  
  <a  href="${pageContext.request.contextPath }/admin/productDetailsByPid/38" >
  <h2 style="color:Black">Vegetariana</h2>
  <img src="resources/img9.jpg" alt="pizza" style="width:100%;height:40%"></a></div>
  <div class="col-sm-4">
  
  <a  href="${pageContext.request.contextPath }/admin/productDetailsByPid/39" >
  <h2 style="color:Black">Quattro Formaggi</h2>
  <img src="resources/img10.jpg" alt="pizza" style="width:100%;height:40%"></a></div>
</div><br><br>

<!-- <hr style="margin-left: -15px;margin-right: -15px;"> 		 -->			 
						
		<div class="list-group-item list-group-item-danger">

<center><h2><b>Non-Veg</b></h2></center></div><br>

<div class="row">
  <div class="col-sm-4">
  
  <a  href="${pageContext.request.contextPath }/admin/productDetailsByPid/40">
 <h2 style="color:Black">Marinara</h2>
  <img src="resources/img11.jpg" alt="pizza" style="width:100%;height:40%"></a></div>
  <div class="col-sm-4">
  
  <a  href="${pageContext.request.contextPath }/admin/productDetailsByPid/41" >
 <h2 style="color:Black">Napolitana</h2>
  <img src="resources/img12.jpg" alt="pizza" style="width:100%;height:40%"></a></div>
  <div class="col-sm-4">
  
  <a  href="${pageContext.request.contextPath }/admin/productDetailsByPid/42" >
  <h2 style="color:Black">Hawaii</h2>
  <img src="resources/img13.jpg" alt="pizza" style="width:100%;height:40%"></a></div>
</div>

<div class="row">
  <div class="col-sm-4">
 
  <a  href="${pageContext.request.contextPath }/admin/productDetailsByPid/43" >
  <h2 style="color:Black">Rucola</h2>
  <img src="resources/img14.jpg" alt="pizza" style="width:100%;height:40%"></a></div>
  <div class="col-sm-4">
 
  <a href="${pageContext.request.contextPath }/admin/productDetailsByPid/44" >
  <h2 style="color:Black">Bolognese</h2>
  <img src="resources/img15.jpg" alt="pizza" style="width:100%;height:40%"></a></div>
  <div class="col-sm-4">
  
  <a href="${pageContext.request.contextPath }/admin/productDetailsByPid/45" >
  <h2 style="color:Black">Meat Feast</h2>
  <img src="resources/img16.jpg" alt="pizza" style="width:100%;height:40%"></a></div>
</div>

</div>
</div>	
        		
				<br><br><br>
					
					
					
<jsp:include page="footer.jsp"/>
 
 
</body>
</html>
