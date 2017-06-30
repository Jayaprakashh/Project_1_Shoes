<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List" %>
<%@page import="com.niit.sback.model.CategoryModel" %>
<%@page import="com.niit.sback.model.SupplierModel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding List</title>

 <!-- dialog -->
 <!--  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
    rel="stylesheet" type="text/css" />
<script> 
<!-- $(function () {
    'use strict';

    function confirmDialog(title, message, success) {
        var confirmdialog = $('<div></div>').appendTo('body')
            .html('<div><h3>'+message+'</h3></div>')
            .dialog({
                modal: true,
                title: title,
                zIndex: 10000,
                autoOpen: false,
               
                width: '300px',
                resizable: true,
                buttons: {
                    Yes: function () {
                        success();
                        $(this).dialog("close");
                    },
                    No: function () {
                        $(this).dialog("close");
                    }
                },
                close: function() {
                    $(this).remove();
                }
            });

        return confirmdialog.dialog("open");
    }

    $('form').on('submit', function (e) {
        e.preventDefault();
        var form = this;

        confirmDialog('Confirm', 'Shell i Get the Data ?', function () {
            form.submit();
        });
    });
});

</script>
 -->
 
</head>
<body>

<jsp:include page="Header.jsp"/>

<a href="supplierlist">Supplier</a>
<a href="categorylist">Category</a>
<a href="shoelistview">Shoelist</a>
  
<!--  
		 
	 <div class="container">
  <h2>ADD Category</h2>
 
  <form action="category">
    <div class="form-group">
      <label for="usr">Category ID:</label>
      <input type="text" class="form-control"  placeholder="Enter Category Id" id="cid" name="cid">
    </div>
    <div class="form-group">
      <label for="pwd">Category Name:</label>
      <input type="text" class="form-control" placeholder="Enter Category name" id="cn" name="cn">
    </div>
    <input type="submit" value="Submit"/>
  </div>
  </form>
  <hr/>
  <h2>ADD Supplier</h2>
 
  <form action="supplier">
    <div class="form-group">
      <label for="usr">Supplier ID:</label>
      <input type="text" class="form-control"  placeholder="Enter Category Id" id="cid" name="cid">
    </div>
    <div class="form-group">
      <label for="pwd">Supplier Name:</label>
      <input type="text" class="form-control" placeholder="Enter Category name" id="cn" name="cn">
    </div>
    <input type="submit" value="Submit"/>
  </div>
  </form>
</div>-->

<div style="">
<!-- LoginPage Category coding  started -->
            <form class="form-horizontal" action="category" method="post">
             <fieldset>

<!-- Form Name -->
<legend>Add Category</legend>
                 <div class="form-group">
  <label class="col-md-4 control-label" for="fn">Category Id</label>  
  <div class="col-md-4">
  <input id="cid" name="cid" type="text" required>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Category Name</label>  
  <div class="col-md-4">
  <input id="cn" name="cn" type="text" required>
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" value="addCat" class="btn btn-primary">Add</button>
     <button id="submit" name="submit" value="cancelCat" class="btn btn-primary">Cancel</button>
  </div>
</div>
</fieldset>
 </form>
 
 <!-- LoginPage supplier coding  started -->
    <form class="form-horizontal" action="supplier" method="post">
             <fieldset>

<!-- Form Name -->

<legend>Add Supplier</legend>
                 <div class="form-group">
  <label class="col-md-4 control-label" for="fn">Supplier Id</label>  
  <div class="col-md-4">
  <input name="cid" type="text" required >
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Supplier Name</label>  
  <div class="col-md-4">
  <input name="cn" type="text" required>
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" value="supAdd" class="btn btn-primary">Add</button>
     <button id="submit" name="submit" value="supCancel" class="btn btn-primary">Cancel</button>
  </div>
</div>
</fieldset>
 </form>
 
 <!-- LoginPage Product Coding  Started -->
 <form class="form-horizontal" action="shoe/submit" method="post" enctype="multipart/form-data"">
             <fieldset>

<!-- Form Name -->
<legend>Add Product</legend>
                 <div class="form-group">
  <label class="col-md-4 control-label" for="fn">Shoe Id</label>  
  <div class="col-md-4">
  <input name="sid" type="text" required>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Shoe Name</label>  
  <div class="col-md-4">
  <input name="sname" type="text" required>
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Brand Shoe</label>  
  <div class="col-md-4">
  <input name="sbrand" type="text" required>
    
  </div>
</div>
 
<!-- DropDown input-->
<div class="form-group">
     
    <label class="col-md-4 control-label" for="ln">Shoe Category</label>  
  <div class="col-md-4">
  <select id="selectedRecord" name="scategory">
             <option>Select Category</option>
             <%
             	List<CategoryModel> clist=(List<CategoryModel>) request.getAttribute("clist");
    			for(CategoryModel c : clist){
    				out.println("<option value='"+ c.getId() +"'>"+ c.getName() + "</option>");
    			}
    			
             %>
<%--             <c:forEach var="List" items="${clist}">

                <option value="${list.id}">${list.sname}</option>

            </c:forEach> --%>

        </select>
</div>
</div>

<!-- DropDown input-->
< <div class="form-group">
        <label class="col-md-4 control-label" for="ln">Shoe Supplier</label>  
  <div class="col-md-4">
  <select id="selectedRecord" name="ssupplier">
             <option>Select Supplier</option>
              <%
             	List<SupplierModel> slist=(List<SupplierModel>) request.getAttribute("slist");
    			for(SupplierModel s : slist){
    				out.println("<option value='"+ s.getId() +"'>"+ s.getName() + "</option>");
    			}
    			
             %> 
         <%--    <c:forEach var="slist" items="${slist}">

                <option value="${slist.supplier_id}">${slist.supplier_name}</option>

            </c:forEach> --%>

        </select>
</div> 
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Shoe Price</label>  
  <div class="col-md-4">
  <input name="sprice" type="text" required>
    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Shoe Description</label>  
  <div class="col-md-4">
  <input name="sdescription" type="text" required>
    
  </div>
</div>
<!-- <div class="form-group">
  <label class="col-md-4 control-label" for="ln">Show Image</label>  
  <div class="col-md-4">
  <input name="simage" type="text" >
    
  </div>
</div> -->
<div class="form-group">
  <label class="col-md-4 control-label" for="inputShoeImage">Show Image</label>  
  <div class="col-md-4">
  <input name="inputShoeImage" type="file" >    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" value="supAdd" class="btn btn-primary">Add</button>
     <button id="submit" name="submit" value="supCancel" class="btn btn-primary">Cancel</button>
  </div>
</div>
</fieldset>
 </form>
  </div>
   

<jsp:include page="Footer.jsp"/>


</body>
</html>