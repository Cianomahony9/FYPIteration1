<%-- 
    Document   : RetrieveFamily
    Created on : 23-Nov-2020, 19:28:07
    Author     : Cian
*** Form Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo ***
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modification includes: changing of navbar size and colour, inserting own titles and links, inserted own form search function, changed footer copyright
-->
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="/FYPCian/css/main.css" />
	</head>
	<body class="subpage">

		<!-- Header -->
			<header id="header">
				<div class="inner"> <!-- Begin Modify code -->
					<a href="index.html" class="logo">Bikes4U.ie</a>
					<nav id="nav">
						<a href="index.html">Home</a>
						<a href="SearchOrder.jsp">Search Order</a>
						<a href="BikeShops.jsp">View Bike Shops</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>
                  
        <!-- search input sent to servlet to take from database -->
          <form action="RetrieveFamilyResults.jsp"method="POST">
             
             <table width="400px" Border="1">
                 <tr>
                        <td colspan="2"><center><h1>Search Family</h1></center></td> 
                    </tr>
                    
                    <tr>
                        <td>Enter Family Name</td>
                        <td><input type="text" name="familyname1" placeholder="Family Name"></td>
                     </tr>
           
                    <td><center><input type="Submit" value="search"/></center></td>
               


             </table>
        </form>
    <!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="flex">
						<div class="copyright">
							&copy; Bikes4U.ie.
						</div>
						
					</div>
				</div> <!-- end modify -->
			</footer>

		<!-- Scripts -->
			<script src="/FYPCian/js/jquery.min.js"></script>
			<script src="/FYPCian/js/skel.min.js"></script>
			<script src="/FYPCian/js/util.js"></script>
			<script src="/FYPCian/js/main.js"></script>

	</body>
</html>



