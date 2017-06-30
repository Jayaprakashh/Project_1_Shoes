 <!DOCTYPE html>
<!-- <html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"> -->
	<html>
	<!--add dependence   -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 

<%@page import="com.niit.sback.dao.ShoeDao"%>

<%@page import="com.niit.sback.model.ShoeModel" %>

<%@page import="com.niit.shoes.controller.ShoeList" %>
 
<head>
	<meta charset="utf-8" />
	<title>ShoeViewList</title>
	
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css" type="text/css">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="./resources/css/jquery.dataTables.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" href="./resources/css/shoe.css">
    <link rel="stylesheet" href="./resources/css/caroualresponsive.css">

</head>
<body>
<jsp:include page="Header.jsp"/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

<div class="container">
<div class="row">
<h2>Edit Product Details</h2>
<hr/>
  <form action="shoe_update"  method="post"  enctype="multipart/form-data">
    <div class="form-group">
      <label for="p_id">Shoe  ID :</label>
      <input type="number" class="form-control" id="p_id" placeholder="Enter Shoe ID" name="id" value="${shoe.id}" required>
    </div>
    <div class="form-group">
      <label for="p_name">Shoe Name :</label>
      <input type="text" class="form-control" id="p_name" placeholder="Enter Shoe Name " name="name" value="${shoe.name}" required>
    </div>
    <div class="form-group">
      <label for="p_desc">Shoe Description :</label>
      <input type="text" class="form-control" id="p_desc" placeholder="Enter Shoe Description " name="desc"value="${shoe.description}" required >
    </div>
    <div class="form-group">
      <label for="p_price">Shoe Price :</label>
      <input type="number" class="form-control" id="p_price" placeholder="Enter Shoe Price " name="price"value="${shoe.price}" required>
    </div>
    <div class="form-group">
  <label class="col-md-4 control-label" for="c_id" >Select Category</label>
  <div class="col-md-4">
    <select id="c_id" class="form-control" name="c_id">
      <c:forEach var="list" items="${clist}">

                <option value="${list.id}">${list.name}</option>

            </c:forEach>
    </select>
  </div>
</div>
<br/>
<br/>
<div class="form-group">
  <label class="col-md-4 control-label" for="s_id" >Select Supplier</label>
  <div class="col-md-4">
    <select id="s_id" class="form-control" name="s_id">
      <c:forEach var="list" items="${slist}">

                <option value="${list.id}">${list.name}</option>

            </c:forEach>
    </select>
  </div>
</div>
<br/>
<br/>
<br/>

<div class="form-group">
      <label for="img">Upload Image:</label>
      <input type="file" id="img" name="file" required>
    </div>
    <button type="submit" class="btn btn-primary" >Save</button>
  </form>
          
           

</div></div>
	
<jsp:include page="Footer.jsp" />  
</body>
</html>