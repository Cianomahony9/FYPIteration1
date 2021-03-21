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
                                                
                                                 <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                        
                                                <a href ="<%=request.getContextPath() %>/CustLogoutServ"> Logout</a> <!--Logout of session -->
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                                        
                                         <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                        
                                         <a href="ViewCustAccount.jsp">Logged in as ${custlogin.fname}</a> <!-- Custs name is displayed from db - When clicked user is redirected to account details page -->
				</div>
			</header>
                                <!--Customer enters order number to be cancelled -->
                                <!-- form input Modified from https://www.youtube.com/watch?v=akW6bzoRcZo -->
                                
           <form action="cancelOrder"method="POST">
            
                                     <table width="400px" Border="1">
                 <tr>
                        <td colspan="2"><center><h1>Cancel Order</h1></center></td> 
                    </tr>
                    
                    <tr>
                        <td>Enter Your Order Number</td>
                        <td><input type="text" name="ordernumber" placeholder="Order Number"></td>
                     </tr>
                                    
                                    <!--Sent to cancelOrder servlet -->
                     <td> <center><input type="Submit" value="Cancel Order"/> </center> </td>
                      
                                     </table>
          
        </form>
                                <!--Note to customer that placing order online and collection will result in discount in order to reduce cancellations -->
        <center>    <p>* A €10 Coupon Will be Deducted from Orders Created on Bikes4U.ie and Collected in Store.</p></center>
                                
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

