<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="image" value="/resources/image" />
<html lang="en">
<head>
 
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--   <link rel="stylesheet" href="./css/shoe.css">-->
 

		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
</head>
<body>



<nav class="navbar navbar-default navbar-inverse" role="navigation">
	<div class="container-fluid">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
							
			<a class="navbar-brand" href="./">				
				<%-- <img src='<c:url value="/resources/images/logo-homee1.jpg" />' width="50px" height="25px" class="img-responsive"/> --%>
			       
			    <img src="${pageContext.request.contextPath}/resources/images/logo-homee1.jpg"  width="30px" height="25px" class="img-responsive"/>
                     </a>	
			 
		</div>		
		
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<!-- 
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Products <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>Category 1</li>
						<li>Category 1</li>
						<li>Category 1</li>
					</ul>
				</li> -->
				
				<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Sport<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="men">Men</a></li>
							 
							</ul></li>
				 
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">ShoeList<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<br>
								<c:forEach items="${clist}" var="p">
								<li><a href="shoelistindividual?id=${p.id}">${p.name}</a></li>
								</br>
								</c:forEach>
							</ul></li>
							
					<li><a href="<c:url value="admin/add"/>" role="button" aria-haspopup="true"
					aria-expanded="false">ShopAdd</a></li>
			</ul>
		
			
				<c:if test="${pageContext.request.userPrincipal.name  == 'Rani@gmail.com'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                 </c:if>
                 </ul>
			  <ul class="nav navbar-nav navbar-right">
			  <c:if test="${pageContext.request.userPrincipal.name == null }">
					<li>
					<a href=' <c:url value="/login" />'>Login</a>
					</li>
				<li><a href="reg">Signup</a></li>
				
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name  != null}">
                               <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
	              				<li><a href='<c:url value="/logout" />'>Signout</a></li>
                 </c:if>
				
				</ul>
		</div>		
	</div>
</nav>






<!--OLD NAV BAR  -->
<%-- 			<nav class="navbar navbar-default navbar-inverse" role="navigation">
				<div class="navbar-header">

					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<!--<a class="navbar-brand" href="#">adidas</a>  -->
					<img alt="Carousel Bootstrap First"
							src="./resources/images/logo-homee1.jpg" width=50px;hight=10px; />
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
					<li class="active"><a href="/">Home</a></li>
					
						<li class="active"><a href="#">Shoe</a>
						 <ul class ="dropdown-menu"> 
						    <br>
						      <c:forEach items="${clist}" var="p">
						       
						       <li> <a href="shoelistview">${p.name }</a>
						 
						 </c:forEach>
						 </ul>
						 </li> 
						 <li class="active"><a href="product">ProductList</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">ProductList<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<br>
								<c:forEach items="${clist}" var="p">
								<li><a href="shoelistindividual?id=${p.id}">${p.name}</a></li>
								</br>
								</c:forEach>
							</ul></li>
						 
						<li><a href="#">Men</a></li><!-- 
						<li class="active"><a href="product">Product List</a></li> -->
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Sport<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="categorylist">Men</a></li>
								<li><a href="supplierlist">Woman</a></li>
							</ul></li>
						 <li class="active"><a href="admin/add">Category</a></li> 
					<!-- 	<li class="active"><a href="supplier">Supplier List</a></li> -->
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Shoe List<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="categorylist">Category List</a></li>
								<li><a href="supplierlist">Supplier List</a></li>
								<li><a href="shoelistview">Shoe List</a></li>
								
								<!-- <li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li class="divider"></li>
								<li><a href="#">One more separated link</a></li> -->
							</ul></li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
				 <ul class="nav navbar-nav navbar-right">
        <li><p class="navbar-text">Already have an account?</p></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
						<!-- 
					 <div class="row">
							<div class="col-md-12">
								Login via
								<div class="social-buttons">
									<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                or
								 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Email address</label>
											 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										</div> 
																			
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
										</div>-->
					 
						<div class="checkbox">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div>
								 </form>
							</div>
							<div class="bottom text-center">
								New here ? <a href="reg"><b>Sign Up</b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
      </ul>
</div>

</nav> --%> <!--OLD NAV BAR USING   -->



<%-- <!--Implementation Spring Security NAV BAR -->
<nav class="navbar navbar-default navbar-inverse" role="navigation">
				<div class="navbar-header">

<!-- 					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button> -->
					<!--<a class="navbar-brand" href="#">adidas</a>  -->
					<img alt="Carousel Bootstrap First"
							src="./resources/images/logo-homee1.jpg" width=50px;hight=10px; />
				</div>
	
		
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
			          
			             <li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Sport<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="men">Men</a></li>
								<!-- <li><a href="supplierlist">Woman</a></li> -->
							</ul></li>
				 
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">ShoeList<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<br>
								<c:forEach items="${clist}" var="p">
								<li><a href="shoelistindividual?id=${p.id}">${p.name}</a></li>
								</br>
								</c:forEach>
							</ul></li>
							
				    <!--calling Catergory Inserting -->
					<li><a href="<c:url value="admin/add"/>" role="button" aria-haspopup="true"
					aria-expanded="false">Shop Add</a></li>
			
		 
				<c:if test="${pageContext.request.userPrincipal.name  == 'Rani@gmail.com'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                 </c:if>
                 </ul>
                 <form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
			  <ul class="nav navbar-nav navbar-right">
			    <c:if test="${pageContext.request.userPrincipal.name == null }">
					<li>
					<a href=' <c:url value="/signin" />'>Login</a>
					</li>
				<li><a href="reg">Signup</a></li>
				
				</c:if>  
				<c:if test="${pageContext.request.userPrincipal.name  != null}">
                               <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
	              				<li><a href='<c:url value="/logout" />'>Signout</a></li>
                 </c:if> 
				
				</ul>
		</div>		 
		
	  	  <ul class="nav navbar-nav navbar-right">
        <li><p class="navbar-text">Already have an account?</p></li>
        
        <li><a href="<c:url value="/admin" />">Admin</a></li> 
					<c:if test="${pageContext.request.userPrincipal.name  == 'admin@gmail.com'}">
						<li><a id="ad" style="color: white;"
							href="<c:url value="add"/>" role="button" aria-haspopup="true"
							aria-expanded="false">Add</a></li>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name  == null}">
						<li><a style="color: white;"
							href="<c:url value="admin/add"/>" role="button"
							aria-haspopup="true" aria-expanded="false">SignIn</a></li>
					</c:if>
				</li>

			</ul>

			<c:if test="${pageContext.request.userPrincipal.name  != null}">
					<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
					<li><a href='<c:url value="/logout" />'>Signout</a></li>
				</c:if>
		</div>
	</div>
	</nav>
 
 --%>  
        <!-- <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
						
					 <div class="row">
							<div class="col-md-12">
								Login via
								<div class="social-buttons">
									<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                or
								 <form class="form" role="form" method="post" action="" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Email address</label>
											 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										</div> 
																			
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
										</div> 
					 
						<div class="checkbox">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div>
								 </form>
							</div>
			 				<div class="bottom text-center">
								New here ? <a href="reg"><b>Sign Up</b></a>
							</div>
					 </div>
				</li>-->
			</ul> 
        </li>
      </ul>	 
</nav>
 
 
</body>
</html>