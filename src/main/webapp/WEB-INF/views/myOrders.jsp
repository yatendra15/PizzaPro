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
<style>

td,th,input{font-size: 1.2em;}
.thumbnail{height:250px;}
</style>
<body style="background-image:url('resources/img001.jpg'); background-attachment:fixed;">
<%@include file="header.jsp" %>
<br><br><br>
<div class="container" style="margin-bottom:20%;">
<br/>
<div class="list-group-item list-group-item-warning">

<center><h2><b>My Orders</b></h2></center></div>
<c:if test="${empty orderInfo }">
<br/><center><h2><b>Nothing to Show</b></h2></center>
</c:if>
<c:forEach items="${cartInfo }" var="orderItem">
<br/><%-- <a href="Details?id=${orderItem.cartOrderID}"> --%>
<div style="box-shadow:0 0 10px grey;" class="table-responsive">
<div class="thumbnail col-sm-3">
<img src="${pageContext.request.contextPath }/resources/${orderItem.cartImage }" alt="${orderItem.cartProductName}" style="height:100%;"/>
</div><div class="col-sm-8">
<table class="table">
<tr><td colspan="2">
	<h3 style="color:DarkRed">${orderItem.cartProductName}</h3>
	</td>
	</tr>
	<tr><td colspan="2"><h4><b>Order Id : ${orderItem.cartOrderID}</b></h4></td></tr>
  	<tr><td colspan="2"><h4><b>Quantity : ${orderItem.cartStock}</b></h4></td></tr>
	<tr><td colspan="2"><h4><b>OrderPlacedOn : ${orderItem.cartOrderPlacedOn}</b></h4></td></tr>
	<tr><td><b>Status : </b>Processing</td><td><b style="color:Green">Amount : <i class="fa fa-inr"></i> ${orderItem.cartPrice*orderItem.cartStock}</b>
  	<tr><td colspan="2"><h4><b>Expected delivery : In 7 Business Days</b></h4></td></tr>
	</td></tr></table></div></div>
  
</c:forEach>
</div><br><br>
<%@include file="footer.jsp"%>
</body>
</html>