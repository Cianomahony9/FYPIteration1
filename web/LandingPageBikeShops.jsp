<%-- 
    Document   : LandingPageBikeShops
    Created on : 19-Feb-2021, 11:34:39
    Author     : Cian O'Mahony 117436194
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modifications include: changing of navbar size and colour, titles and links, insert own bike shop headings and photos
-->
<html>
<head> <!-- Begin Modify code -->
	<title>Bikes4U.ie</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="/FYPCian/css/main.css" />
	</head>
<body class="subpage">
<!-- Header -->
<header id="header">
	<div class="inner">
		<a href="LandingPage.jsp" class="logo">Bikes4U.ie</a> <!-- link to landing page -->
			<nav id="nav">
				<a href="LandingPage.jsp">Home</a> <!-- link to landing page -->
				<a href="login.jsp">Search Order</a> <!-- link to login page -->
				<a href="LandingPageBikeShops.jsp">View Bike Shops</a> <!-- link to bike landing page -->
			</nav>
				<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
	</div>
</header>
<!-- Section Three Bike Shops -->
<section id="three" class="wrapper">
	<div class="inner">
		<header class="align-center">
			<h2>Bike Shops</h2>
		</header>
	<div class="flex flex-2">
		<article>
			<div class="image fit">
				<!--image sourced from https://www.halfordscompany.com/media/2847/halfords-logo.jpg -->
                                <img src="Images/halfordslogo.jpg" alt="halfordslogo" />
			</div>
<header>
   <center><h3>Halfords</h3>
   <p> Carrera and Boardman Bikes available</p>
   </center>
</header>
                    <footer> <center>
	<a href="login.jsp"> <!-- link to login page -->
            <input type ="button" value="Create Order"/></a>
                        </center></footer>
		</article>
		
                <article>
			<div class="image fit">
                                <!-- image sourced from https://www.theedge-sports.com/images/modules/promo_units/1468401253-80923200.png -->
				<img src="Images/theedgelogo.png" alt="theedgelogo" />
			</div>
<header>
    <center><h3>The Edge Cycles</h3>
         <p> Cube and ORBEA Bikes available</p>
    </center>
</header>
                    <footer> <center>
       <a href="login.jsp"> <!-- link to login page -->
           <input type ="button" value="Create Order"/></a>
                        </center></footer>
		</article>
            
                <article>
			<div class="image fit">
                                <!--Image sourced from https://www.one4all.ie/media/catalog/product/cache/28e0f5d829bc51649b711879f64cc299/c/a/capwellcycles.png -->
				<img src="Images/capwellcycles.png" alt="capwelllog" />
			</div>
<header>
    <center><h3>Capwell Cycles</h3>
    <p> Trek bikes available</p>
    </center>
</header>
                    <footer> <center>
	<a href="login.jsp" > <!-- link to login page -->
            <input type ="button" value="Create Order"/></a>
	</center></footer>
		</article>
            
                <article>
			<div class="image fit">
                                <!-- image sourced from https://www.one4all.ie/media/catalog/product/cache/28e0f5d829bc51649b711879f64cc299/c/o/corkgiant.png-->
				<img src="Images/corkgiant.png" alt="Pic 01" />
			</div>
<header>
    <center>  <h3>Giant Superstores</h3> 
    <p>Giant Bikes available </p>
    </center>
</header>
                    <footer> <center>
	<a href="login.jsp" > <!-- link to login page -->
            <input type ="button" value="Create Order"/></a>
                        </center></footer>
		</article>
	   </div>
	</div>
</section>

<!-- Footer -->
	<footer id="footer">
		<div class="inner">
		<div class="flex">
		<div class="copyright">
			&copy; Bikes4U.ie.
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
