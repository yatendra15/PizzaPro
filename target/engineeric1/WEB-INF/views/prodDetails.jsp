<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

td,th,input{font-size: 1.2em;}
.thumbnail{height:250px;}
</style>
<body >

<jsp:include page="header.jsp"/>
<br><br><br><br><br>
<div class="container">
	<div class="row">
		<div style="box-shadow:0 0 10px grey;" class="table-responsive">
<div class="thumbnail col-sm-3">
			<img alt="" src="${pageContext.request.contextPath }/resources/${prod.pro_imagename }" style="height:100%;">
			</div>
			<div class="col-sm-5" style="border:0px solid gray;">
			<h3>${prod.pro_name}</h3>
			<h4>${prod.pro_writer}</h4>
			<h4><i class="fa fa-inr"></i> ${prod.pro_price}</h4>
			<h4>${prod.pro_supplier.supp_name}</h4>	
				<div class="section" style="padding-bottom:20px;">
					<form action="${pageContext.request.contextPath }/addToCart" method="post">
					<input type="hidden" value="${prod.pro_id }" name="pro_id"/>
					<input type="hidden" value="${prod.pro_price }" name="pro_price"/>
					<input type="hidden" value="${prod.pro_imagename }" name="pro_imagename"/>
					<input type="hidden" value="${prod.pro_stock }" name="pro_stock"/>
					<input type="hidden" value="${prod.pro_name }" name="pro_name"/>
					<input type="number" class="form-control" name="pQty" required/><br><br>
					<input class="btn btn-warning btn-lg" type="submit" value="Add To Cart"/>
					<!-- <h6><span class="glyphicon glyphicon-heart-empty" style="cursor:pointer;"></span>Wish List</h6> -->
				   </form>
				</div>
			</div>
		
		<div class="col-sm-8">
		<h3>Product Details</h3>
		<ul class="menu-items">
		<li>A pizza loaded with crunchy onions, crisp capsicum,
		 juicy tomatoes and jalapeno with a liberal sprinkling of exotic Mexican herbs.</li>
		<li>Goldern Corn, Black Olives, Capsicum & Red Paprika</li>
		<li>Cheese, juicyfresh tomatoes and jalapeno</li>
		</ul>
		</div>
		</div>
		
	</div>
	</div>
	<br><br><br><br>
	<jsp:include page="footer.jsp"/>
	</body></html>