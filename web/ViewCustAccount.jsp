<%-- 
    Document   : ViewAccount
    Created on : 22-Feb-2021, 22:16:26
    Author     : Cian O'Mahony 117436194
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
                                                <a href ="<%=request.getContextPath() %>/CustLogoutServ"> Logout</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                                         <!--logout and displaying name on page code acquired and modified from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                          <a href="ViewCustAccount.jsp">Logged in as ${custlogin.fname}</a>  <!-- Custs name is displayed from db - When clicked user is redirected to account details page -->
				</div>
			</header>
                                
                                
            <form action="updateprofile"method="POST">
             <table width="400px" Border="1">
                 <tr>
                     <!-- display current details -->
                        <tr colspan="2"><center><h1> Current Account Details</h1></center></tr> 
          
                        <td> First Name <input type="text" name="custfname" value = ${custlogin.fname} readonly></td>
                        <td>Last Name<input type="text" name="custlname" value = ${custlogin.lname} readonly></td>
                        <td>Email Address<input type="text" name="custemail" value = ${custlogin.email} readonly></td>
                        <td>Telephone Number<input type="text" name="custtelephone" value = ${custlogin.telephone} readonly></td>
                        <td>Address<input type="text" name="custaddress" value = ${custlogin.address} readonly></td>
                        <td>Eircode<input type="text" name="custeircode" value = ${custlogin.eircode} readonly></td>
                        <td>County<input type="text" name="custcounty" value = ${custlogin.county} readonly></td>
                     
                      </table>
                        <!-- inputs to be updated -->
                     <table width="400px" Border="1">
                     <tr colspan="2"><center><h1>Edit Account Details</h1></center></tr> 
                    
                    
                         <td> Email Address <input type="email" name="email" ></td>
                    
                         <td> Address <input type="text" name="address" ></td>
                         
                         <td> Eircode <input type="text" name="eircode" ></td>
                         
                         <td> County <input type="text" name="county" ></td>
                     
            </table>
                    <center><input type="Submit" value="Update Account Details" />
                     
                    </center>
         </form>
                        
                        
                       <!--  code for linking hidden values modified and acquired from https://www.geeksforgeeks.org/hidden-form-field-using-annotation-java-servlet/  -->
                       <!-- carry details to view cust records --> 
                        
                        <form action="EditRecords.jsp"method="POST">
                            <input type ='hidden' name='custfname' value = ${custlogin.fname}>
                            <input type ='hidden' name='custtelephone' value = ${custlogin.telephone}>
                            <input type ='hidden' name='custlname' value = ${custlogin.lname}>
                            
                            <center>  <input type='Submit' value='Edit Profile' /> </center>
                            
                            
                        </form>          
                                
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

