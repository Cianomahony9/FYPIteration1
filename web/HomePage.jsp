<%-- 
    Document   : HomePage
    Created on : 21-Feb-2021, 20:26:52
    Author     : Cian O'Mahony 117436194
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
					<a href="HomePage.jsp" class="logo">Bikes4U.ie</a> <!--Link to home page -->
					<nav id="nav">
						<a href="HomePage.jsp">Home</a> <!--Link to home page -->
                                                
						<a href="SearchOrder.jsp">Search Order</a> <!--Link to search order page -->
                                                
						<a href="BikeShops.jsp">View Bike Shops</a> <!--Link to bikeshop page -->
                                                
                                                
                                                 <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                      
                                                <a href ="<%=request.getContextPath() %>/CustLogoutServ"> Logout</a> 
                                               
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                                        
                                         <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                              <a href="ViewCustAccount.jsp">Logged in as ${custlogin.fname}</a>   <!-- Custs name is displayed from db - When clicked user is redirected to account details page -->
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
					<h3>Create Family Profile</h3>
				</header>
					<p>Enter bike specific details for you and your family to start your bike sizing journey.</p>
				<footer> 
					<a href="/FYPCian/Family.jsp"> <!--link to create family page -->
                                            <input type ="button" value="Create Family Profile"/></a>
				</footer>
			</article>
                    
			<article>
				<header>
					<h3>Insert Person to Family</h3>
				</header>
					<p>Add family members and account details to family profile.</p>
				<footer>
					<a href="/FYPCian/InsertFamily.jsp"> <!--link to insert person to family page -->
                                            <input type ="button" value="Insert to Family"/></a>
				</footer>
			</article>
                    
                    <article>
				<header>
					<h3>Create Order</h3>
				</header>
					<p>Create a bike order with our four participating stores.</p>
				<footer>
					<a href="/FYPCian/RetrieveFamily.jsp"> <!--link to retrieve family  page to start order process  -->
                                            <input type ="button" value="Create Order"/></a>
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
					<h3>View Account</h3>
				</header>
					<p>View account details and made make edits to profiles and accounts.</p>
				<footer> 
					 <a href="/FYPCian/ViewCustAccount.jsp" >  <!--link to view account details and make edits page -->
                                             <input type ="button" value="View Account"/></a> 
				</footer>
			</article>
                    
			<article>
				<header>
					<h3>View the Bike Shop Members</h3>
				</header>
					<p>View the bike shops that are part of our sizing journey.</p>
				<footer> 
					<a href="/FYPCian/BikeShops.jsp"> <!--Link to view bike shops page -->
                                            <input type ="button" value="View Bike Shops"/></a>
				</footer>
			</article>
                    
			<article>
				<header>
					<h3>Search Bike Order</h3>
				</header>
					<p>Search for you bike order details with your order number.</p>
				<footer> 
					<a href="/FYPCian/SearchOrder.jsp"> <!--Link to search/delete order page -->
                                            <input type ="button" value="Search Bike Order"/></a>
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
