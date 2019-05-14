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
<body style="bgcolor:White";>

<jsp:include page="header.jsp"/>
<br><br><br>
<div class="container-fluid">
<h2>Product List For Customer</h2>
<table class="table table-hover" id="api" class="display" border="2" width="80" align="center">
	<tr>
		
		<th>Product Name</th>
		<th>Product Quantity</th>
		<th>Product Price</th>
		<th>Product Image</th>
		<th>Sub Total</th>
		<th>Action</th>
		
	</tr>
	
	<c:if test="${empty cartInfo }">
		<tr>
			<td colspan="10" align="center">No Record Exists !!</td>
		</tr>
	</c:if>
	
	
	<c:forEach var="p" varStatus="st" items="${cartInfo}">
		<tr>
			<td><c:out value="${p.cartProductName }"></c:out></td>
			<td><a class="btn btn-info btn-sm" href="${pageContext.request.contextPath }/sub?cartId=${p.cartId }">-  </a>
			<c:out value="              ${p.cartStock }              "></c:out>
			<a class="btn btn-info btn-sm" href="${pageContext.request.contextPath }/add?cartId=${p.cartId }">  +</a></td>

			<td><c:out value="${p.cartPrice }"></c:out></td>
			<td><img src="${pageContext.request.contextPath }/resources/${p.cartImage }" width="50px" height="50px"></td>
			<td><c:out value="${p.cartStock * p.cartPrice}"></c:out></td>		
			<td class="span4">
				<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
				<a class="btn btn-danger" role="button" href="<c:url value="/deletePCart/${p.cartId}"/>" >Delete</a>	
				<c:set var="gtot" value="${gtot+ p.cartStock*p.cartPrice }"></c:set>
		
			</td>
		</tr>
	
	</c:forEach>
	<td>
	
	
	<span class="col-lg-9" align="right"><label>Grand Total :</label><c:out value=" ${gtot }"></c:out></span>
	</td>
	
	
	<tfoot>
	<c:if test="${empty cartInfo }">
	<td>
	<a class="btn btn-warning btn-lg" href="${pageContext.request.contextPath }/index">Order Here</a>
	</td>
	</c:if>
	<c:if test="${empty cartInfo!=true }" >
	<td>
	<a class="btn btn-warning btn-lg" href="${pageContext.request.contextPath }/index">Continue Shopping</a>
	</td>
	<td>
	<a class="btn btn-success btn-lg" href="${pageContext.request.contextPath }/checkout">Checkout</a>
	</td>
	</c:if>
	</tfoot>
	

</table>
</div>
</body>
</html>