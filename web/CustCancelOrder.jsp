<%-- 
    Document   : CustCancelOrder
    Created on : 02-Mar-2021, 13:43:33
    Author     : Cian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modifications include changing navabar size and colour, inserted own titles and links, changed footer copyright

-->
<html>
	<head>
            <title>Bikes4U.ie</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="/FYPCian/css/main.css" />
	</head>
	<body class="subpage">

		<!-- Header -->
			<header id="header">
				<div class="inner"> <!-- Begin Modify code -->
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
                                
           <form action="cancelOrder"method="POST">
            
                                     <table width="400px" Border="1">
                 <tr>
                        <td colspan="2"><center><h1>Cancel Order</h1></center></td> 
                    </tr>
                    
                    <tr>
                        <td>Enter Your Order Number</td>
                        <td><input type="text" name="ordernumber" placeholder="Order Number"></td>
                     </tr>
                                    
                                    
                     <td> <center><input type="Submit" value="Cancel Order"/> </center> </td>
                      
                                     </table>
          
        </form>
        <center>    <p>* A €10 Cancellation Fee Will be Deducted from the Given Debit/Credit Card </p>       </center>
                                
                   <!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="flex">
                                            <!-- Border to split search and Order Display -->
                                            
					</div>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="/FYPCian/js/jquery.min.js"></script>
			<script src="/FYPCian/js/skel.min.js"></script>
			<script src="/FYPCian/js/util.js"></script>
			<script src="/FYPCian/js/main.js"></script>

	</body>
</html>

