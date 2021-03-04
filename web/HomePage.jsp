<%-- 
    Document   : HomePage
    Created on : 21-Feb-2021, 20:26:52
    Author     : Cian
--%>

<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modifications include changing of navbar colour and size, inserted own headings and links, inserted own cover photo, changed size of cover photo, changed colour of banner, inerted own functions to body (search create) changed copyright footer to own website 
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>  <!-- Begin Modify Code -->
		<title>Bikes4U.ie</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="/FYPCian/css/main.css" />
       </head>
	<body>
		<!-- Header -->
			<header id="header">
				<div class="inner"> 
					<a href="HomePage.jsp" class="logo">Bikes4U.ie</a>
					<nav id="nav">
						<a href="HomePage.jsp">Home</a>
						<a href="SearchOrder.jsp">Search Order</a>
						<a href="BikeShops.jsp">View Bike Shops</a>
                                                <a href ="<%=request.getContextPath() %>/CustLogoutServ"> Logout</a>
                                               
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                                        <h1>Logged in as ${custlogin.fname} </h1>
				</div>
			</header>

                
                
		<!-- Banner -->
     <section id="banner">
	<h1>Welcome to Bikes4U.ie</h1>
     </section>

		<!-- Selection One -->
     <section id="one" class="wrapper">
	<div class="inner">
		<div class="flex flex-3">
                    <article>
				<header>
					<h3>View Account</h3>
				</header>
					<p>View account details and make edits </p>
				<footer>
					 <a href="/FYPCian/ViewCustAccount.jsp" class="button special">View Account</a> 
				</footer>
			</article>
			
			<article>
				<header>
					<h3>Create Family Profile</h3>
				</header>
					<p>Enter bike specific details for you and your family to start your bike sizing journey</p>
				<footer>
					<a href="/FYPCian/Family.jsp" class="button special">Create Family Profile</a>
				</footer>
			</article>
                    
			<article>
				<header>
					<h3>Insert Person to Family</h3>
				</header>
					<p>Add family members to family profile .</p>
				<footer>
					<a href="/FYPCian/InsertFamily.jsp" class="button special">Insert to Family</a>
				</footer>
			</article>
                </div>
	    </div>
	</section>

        <section id="one" class="wrapper">
	    <div class="inner">
		<div class="flex flex-3">
			<article>
				<header>
					<h3>Create Order</h3>
				</header>
					<p>Create a bike order.</p>
				<footer>
					<a href="/FYPCian/RetrieveFamily.jsp" class="button special">Create Order</a>
				</footer>
			</article>
                    
			<article>
				<header>
					<h3>View the Bike Shop Members</h3>
				</header>
					<p>View the bike shops that are part of our sizing journey</p>
				<footer>
					<a href="/FYPCian/BikeShops.jsp" class="button special">View Bike Shops</a>
				</footer>
			</article>
                    
			<article>
				<header>
					<h3>Search Bike Order</h3>
				</header>
					<p>Search for you bike order details with your order number.</p>
				<footer>
					<a href="/FYPCian/SearchOrder.jsp" class="button special">Search Bike Order</a>
				</footer>
			</article>
                    </div>
		</div>
        </section>
                
<!-- Footer -->
<footer id="footer">
	<div class="inner">
		<div class="flex">
		    <div class="copyright">
				&copy; Bikes4U.ie
                    </div>
		<ul class="icons">
		    <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
		    <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
		</ul>
		</div> <!-- end modify -->
	</div>
</footer>

<!-- Scripts -->
			<script src="/FYPCian/js/jquery.min.js"></script>
			<script src="/FYPCian/js/skel.min.js"></script>
			<script src="/FYPCian/js/util.js"></script>
			<script src="/FYPCian/js/main.js"></script>

	</body>
</html>
