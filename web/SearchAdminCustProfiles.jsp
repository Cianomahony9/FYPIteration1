<%-- 
    Document   : SearchAdminCustProfiles
    Created on : 02-Feb-2021, 13:50:47
    Author     : Cian O'Mahony 117436194
*** Form Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo ***
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modifications : Changed boarder colour, inserted own links to navbar and changed titles, inserted form to body,changed table column names, changed footer copyright text to own website

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
					<a href="AdminPage.jsp" class="logo">Bikes4U.ie</a> <!-- link to admin home page -->
					<nav id="nav">
						<a href="AdminPage.jsp">Home</a> <!-- link to admin home page -->
                                                
						<a href="SearchAdminOrder.jsp">Search Order</a> <!-- link to admin search store orders page -->
                                                
						<a href="SearchAdminCust.jsp">View Customer Profiles</a> <!-- link to admin search customer profiles page -->
                                                
                                                <a href="SearchAdminCustProfiles.jsp">View Customer Accounts</a> <!-- link to admin search customer accounts page -->
                                                
                                                 <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                                <a href ="<%=request.getContextPath() %>/AdminLogoutServ"> Logout</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                                        
                                         <!--logout and displaying name on page code acquired and modified from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                        <h1>Logged in For ${adminlogin.store} </h1>
				</div>
			</header>
    <center>
           <!-- data taken and sent to jsp page to search database -->
            <!-- form layout acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo -->
        <form action="SearchAdminCustProfileResult.jsp"method="POST">
             <table width="400px" Border="1">
                 <tr>
                        <td colspan="2"><center><h1>Search Customer Account</h1></center></td> 
                    </tr>
                    
                    <tr>
                        <td>Enter Customer Family Name</td>
                        <td><input type="text" name="customerfname" placeholder="Family Name"></td>
                    </tr>
                     <tr>
                        <td>Enter Customer Telephone Number</td>
                        <td><input type="text" name="customertelephone" placeholder="telephone"></td>
                    </tr>
                    
           </table>
                    <center><input type="Submit" value="Search Customer Account"/></center>
              
            
        </form>
    </center>
    
    
   <!-- Footer -->
    <footer id="footer">
	<div class="inner">
	<div class="flex">
		<div class="copyright">
			&copy; Bikes4U.ie.                    
		</div>
	<!-- end modify -->
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