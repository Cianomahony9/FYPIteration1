<%-- 
    Document   : InsertFamily
    Created on : 24-Nov-2020, 15:19:55
    Author     : Cian
*** Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo ***
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modifications include changing navbar size and colour, inserting own titles and links,inserted own servlet form connector, changed footer copyright 
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
					<a href="index.html" class="logo">Bikes4U.ie</a>
					<nav id="nav">
						<a href="index.html">Home</a>
						<a href="SearchOrder.jsp">Search Order</a>
						<a href="BikeShops.jsp">View Bike Shops</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>
    
                <!--sending inputted data to servlet and database -->
        <form  action="insertFamilyServ" method="POST">
                  
                <table width="400px" Border="1">
                    <tr>
                        <td colspan="2"><center><h1>Add Person To Family</h1></center></td> 
                    </tr>
                
                    <tr>
                        <td><input type="text" name="familyname1" placeholder="Family Name" ></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="name" placeholder="First Name"></td>
                    </tr>
                    
                    <tr>
                        <td><input type="text" name="gender" maxlength="7" placeholder="Gender"></td>   <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                        </tr>
                    <tr>
                        <td><input type="text" name="height" maxlength="8" placeholder="Height"></td>   <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp-servlet --%>
                        </tr>
                        
                        <tr>
                        <td><input type="text" name="weight"  maxlength="5" placeholder="Weight"></td>   <%--  max lenght condition acquired and modified from https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                        </tr>
                        
                          <tr>
                        <td><input type="text" name="insideleg" placeholder="Inside Leg Length"></td>
                        </tr>
                        
                          <tr>
                        <td><input type="text" name="armlength" maxlength="4" placeholder="Arm Length"></td>  <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                        </tr>
                       
                        <tr>
                            <td>
                        <center> <input type="Submit" value="Insert Profile"> </center>  </td>
                       <%-- <td>  <center><a href="/FYPCian/RetrieveFamily.jsp">Retrieve Family </a> </center> </td>  --%>
                        </tr>
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
				</div>
			</footer>

		<!-- Scripts -->
			<script src="/FYPCian/js/jquery.min.js"></script>
			<script src="/FYPCian/js/skel.min.js"></script>
			<script src="/FYPCian/js/util.js"></script>
			<script src="/FYPCian/js/main.js"></script>

	</body>
</html>

