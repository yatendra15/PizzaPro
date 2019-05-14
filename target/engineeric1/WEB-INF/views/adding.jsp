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
<br><br><br><br>
<div class="container-fluid">
	<div class="row">
    <ul class="nav nav-tabs">
      <li class="active"><a href="#category" data-toggle="tab">Category</a></li>
      <li><a href="#supplier" data-toggle="tab">Supplier</a></li>
      <li><a href="#product" data-toggle="tab">Product</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="category">
        <form:form modelAttribute="category" action="${pageContext.request.contextPath }/admin/saveCategory" id="tab">
            <label>Name</label>
            <form:input path="cat_name" type="text" class="input-xlarge"/>
            <label>Description</label>
            <form:input path="cat_desc" type="text" class="input-xlarge"/>
            
           
          	<div>
        	    <button class="btn btn-primary" type="submit" >Update</button>
        	    <button class="btn btn-warning" type="reset" >Cancel</button>
        	</div>
        </form:form>
      </div>
      <div class="tab-pane fade" id="supplier">
    	<form:form modelAttribute="supplier" action="${pageContext.request.contextPath }/admin/saveSupplier" id="tab2">
            <label>Name</label>
            <form:input path="supp_name" type="text" class="input-xlarge"/>
            <label>Address</label>
            <form:input path="supp_address" type="text" class="input-xlarge"/>
            
           
          	<div>
        	    <button class="btn btn-primary" type="submit" >Update</button>
        	    <button class="btn btn-warning" type="reset" >Cancel</button>
        	</div>
        </form:form>

      </div>
      <div class="tab-pane fade" id="product">
    	<form:form modelAttribute="product" action="${pageContext.request.contextPath }/admin/saveProduct" id="tab3" enctype="multipart/form-data">
            <label>Name</label>
            <form:input path="pro_name" type="text" class="input-xlarge"/>
            <label>Writer Name</label>
            <form:input path="pro_writer" type="text" class="input-xlarge"/>
            <label>Stock</label>
            <form:input path="pro_stock" type="number" class="input-xlarge"/>
            <label>Price</label>
            <form:input path="pro_price" type="number" class="input-xlarge"/>
            
            <table>
            	<tr>
            		<td>Select Category</td>
            		<td>
        				<form:select path="pro_category.cat_id" id="catName" class="form-control" required="required">
						<option value="" label="----------- Select Category -----------" disabled="true" selected/>
						<c:forEach items="${catlist }" var="cat">
							<option value="${cat.cat_id }">${cat.cat_name }</option>
						</c:forEach>
						</form:select>
    				</td>
    			</tr>
    		</table>
    		
    		<table>
            	<tr>
            		<td>Select Supplier</td>
            		<td>
        				<form:select path="pro_supplier.supp_id" id="suppName" class="form-control" required="required">
						<option value="" label="----------- Select Supplier -----------" disabled="true" selected/>
						<c:forEach items="${supplist }" var="supp">
							<option value="${supp.supp_id }">${supp.supp_name }</option>
						</c:forEach>
						
						</form:select>
    				</td>
    			</tr>
    		</table>
    		
    		<div class="fileinput fileinput-new" >
    			<table>
    				<tr>
    					<td>Product Image</td>
    					<td><form:input class="form-control" type="file" path="pro_image" required="required"/></td>
    				</tr>
    			</table>
    		</div>
    		
    		<div>
        	    <button class="btn btn-primary" type="submit" >Update</button>
        	    <button class="btn btn-warning" type="reset" >Cancel</button>
        	</div>
        </form:form>

      </div>
      </div>
  </div>
  </div>
 
  
</body>
</html>