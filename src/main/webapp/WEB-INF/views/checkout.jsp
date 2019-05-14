<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
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
<br><br><br><br>
<div class="container" style="margin-left:28%;">
<div class="row">
	<div class="col-sm-6 jumbotron" > 
		<div class="container" style="margin-left:7%;">       
 		 <h2 style="color:Black;align:center">Customer Shipping Details</h2><br>
 		 <%
         Date date = new Date();
         out.print( "<h4 align = \"right\">" +date.toString()+"</h4>");
      %>
		</div>
		<div class="outer">
		<div class="well" style="width:100%">
		<form action="${pageContext.request.contextPath }/Orderprocess" method="post">
		<%-- <c:set var="gtot" value="0"></c:set> --%>
		
		<c:forEach var="c" items="${cart }">
		<c:set var="gtot" value="${gtot+ c.cartStock*c.cartPrice }"></c:set>
		
	 </c:forEach>
	 
		
		<div class="well"  >
		
	
	
			 <div class="container-fluid" style="margin-left:36%;">
		<span class="col-lg-15" style="color:Green;align:Right";><label>Grand Total :</label><c:out value=" ${gtot }"></c:out></span>
		 </div>
	
		
		<input name="name" type="text" placeholder="Name" required=" " maxlength="25" pattern="[A-Za-z]+[ ]*[A-Za-z]*" title="Enter a valid name" >
					<input name="mobile" type="text" placeholder="Contact No." required=" " pattern="[0-9]{10}" title="Enter a 10 digit mobile number" maxlength="10" >
					<input name="address" type="text" placeholder="Shipping Address" required=" " maxlength="255" >
	
	
		<br>
	<div class="outer">
	
	<h3>Enter Payment Details</h3>
	<br>
	<!-- <h4>Grand Total:&nbsp ${gtot }</h4> -->
	<input type="hidden" value="${gtot }" name="total" /> 
	<input type="hidden" value="<%date.toString(); %>" name="date"/>
	<label>Select Payment</label>
	<select name="payment">
	<!-- <option value="Net">Net Banking</option> -->
	<option value="COD">Cash on delivery</option>
	
	</select>
	<br><br>
	<!-- <div style="margin-bottom:20px; width:30%;">
	Name: <input type="text" name="name on card"><br><br>
	Card Number:<input type="text" name="card number"><br> 
	</div> -->
	
	</div><br><br>	
	
	<input type="submit" value="PROCEED" style="width:75%;margin-left: 10%;" class="btn btn-danger">	
		</div>
		
		
		
		
		
		
		</form>
		</div>
		</div>
	</div>
</div>
</div>
			
				<br><br><br><br><br>
					
					
					
<jsp:include page="footer.jsp"/>
 
 
</body>
</html>