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
<style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 25%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
  margin-left: 856px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
</style></head>
<body>
<script type="text/javascript" src="<c:url value="/resources/js/inputform.js"/>"></script>
<jsp:include page="header.jsp"/>
<br><br><br>
<div class="container-fluid">
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search Product names.." title="Type in a name">

<h2>Category List For Admin</h2>
<table class="table table-hover" id="myTable" class="display" border="2" width="80" align="center">
	<tr>
		<th>Sr. No.</th>
		<th>Category ID</th>
		<th>Category Name</th>
		<th>Category Description</th>
		<th class="span2">Action</th>
	</tr>
	<tr><centre><b style="color:Red"><c:out value="${warning }"></c:out></b></centre></tr>
	<c:if test="${empty catlist }">
		<tr>
			<td colspan="10" align="center">No Record Exists !!</td>
		</tr>
	</c:if>
	
	
	<c:forEach var="c" varStatus="st" items="${catlist }">
		<tr>
			<td><c:out value="${st.count }"></c:out></td>
			<td><c:out value="${c.cat_id }"></c:out></td>
			<td><c:out value="${c.cat_name }"></c:out></td>
			<td><c:out value="${c.cat_desc }"></c:out></td>
			<td class="span4">
				<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
					<a href="<c:url value="updateCat?cat_id=${c.cat_id}"/>" id="update" class="btn btn-success myBoldFont">Update</a>
					<a href="<c:url value="deleteCat?cat_id=${c.cat_id}"/>" id="delete" class="btn btn-danger myBoldFont">Delete</a>
				</td>
		</tr>
	</c:forEach>
	

</table>
</div>

<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[2];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
<%-- <jsp:include page="footer.jsp"/> --%>

</body>
</html>