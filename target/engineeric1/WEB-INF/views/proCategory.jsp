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
<br><br><br><br>
<h2>Menu for Customer</h2>
<table class="table table-hover" id="api" class="display" border="2" width="80" align="center">
	<tr>
		<th>Sr. No.</th>
		<th>Product ID</th>
		<th>Product Name</th>
		<th>Product Supplier</th>
		<th>Product Category</th>
		<th>Stock</th>
		<th>Price</th>
		<th>Image</th>
		<th class="span2">Action</th>
	</tr>
	
	<c:if test="${empty prodList }">
		<tr>
			<td colspan="10" align="center">No Record Exists !!</td>
		</tr>
	</c:if>
	
	
	<c:forEach var="p" varStatus="st" items="${prodList }">
		<tr>
			<td><c:out value="${st.count }"></c:out></td>
			<td><c:out value="${p.pro_id }"></c:out></td>
			<td><c:out value="${p.pro_name }"></c:out></td>
			<td><c:out value="${p.pro_supplier.supp_name }"></c:out></td>
			<td><c:out value="${p.pro_category.cat_name }"></c:out></td>
			<td><c:out value="${p.pro_stock }"></c:out></td>
			<td><c:out value="${p.pro_price }"></c:out></td>
			<td><img src="${pageContext.request.contextPath }/resources/${p.pro_imagename }" width="50px" height="50px"></td>
			<td class="span4">
				<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
					<a href="<c:url value="/admin/productDetailsByPid/${p.pro_id}"/>" class="btn btn-info" role="button" style="background-color:#ff5252;border:none;">More Details</a>
					
			</td>
		</tr>
	</c:forEach>
	

</table>
</div>
<br><br><br><br><br><br><br>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>