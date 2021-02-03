<%-- 
    Document   : AdminPage
    Created on : 20-Jan-2021, 14:57:22
    Author     : Cian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>

<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modifications : changed header colour and size,changed titles and colours , changed navbar links and titles, changed body contents to own functions (Search view) changed footer copyright 
-->
<html>
<head> <!-- Begin Modify code -->
	<title>Bikes4U.ie</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="/FYPCian/css/main.css" />
</head>
<body>
<!-- Header -->
 <header id="header">
	<div class="inner">
		<a href="index.html" class="logo">Bikes4U.ie</a>
		<nav id="nav">
			<a href="index.html">Home</a>
			<a href="SearchOrder.jsp">Search Order</a>
			<a href="BikeShops.jsp">View Bike Shops</a>
		</nav>
		<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
	</div>
</header>

<!-- Welcome Banner -->
	<section id="banner">
		<h1>Welcome to Bikes4U.ie</h1>
        </section>

<!-- Section One -->
	<section id="one" class="wrapper">
		<div class="inner">
			<div class="flex flex-3">
			<article>
				<header>
				<h3>View Open Orders</h3>
				</header>
				<footer>
				<a href="/FYPCian/SearchAdminOrder.jsp" class="button special">View Open Orders</a>
				</footer>
			</article>
			<article>
				<header>
				<h3>View Customer Records</h3>
				</header>
				<footer>
				<a href="/FYPCian/SearchAdminCust.jsp" class="button special">View Customer Records</a>
				</footer>
			</article>
			<article>
			        <header>
			        <h3>Search Customer Profiles </h3>
			        </header>
			        <footer>
			        <a href="/FYPCian/SearchAdminCustProfiles.jsp" class="button special">View Profiles </a>
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
				</div> <!-- end modify -->
			</div>
		</div>
	</footer>

		<!-- Scripts -->
			<script src="FYPCian/js/jquery.min.js"></script>
			<script src="FYPCian/js/skel.min.js"></script>
			<script src="FYPCian/js/util.js"></script>
			<script src="FYPCian/js/main.js"></script>

	</body>
</html>
