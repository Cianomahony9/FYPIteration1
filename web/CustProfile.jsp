<%-- 
    Document   : CustProfile
    Created on : 22-Nov-2020, 20:27:03
    Author     : Cian


--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modifications include change navbar size, colour, headings and links , changed footer copyright 
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
		<header id="header"> <!-- Begin Modify code -->
			<div class="inner">
			<a href="#" class="logo">Bikes4U.ie</a>
				</div>
			</header>
             
                     
<!-- sending inputted data to the create servlet to send to database  *** Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo *** -->
         <form  action="create" method="POST">
                  
                <table width="400px" Border="1">
                    
                    <tr>
                        <td colspan="2"><center><h1>Create Profile</h1></center></td>
                    </tr>
                
                    <tr>
                        
                        <td><input type="text" name="fname" placeholder="First Name" ></td>
                    </tr>
                    <tr>
                        
                        <td><input type="text" name="lname" placeholder ="Last Name" ></td>
                        </tr>
                        
                        <tr>
                        
                        <td><input type="text" name="telephone"  maxlength="10" placeholder = "Telephone Number"></td>  <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                        </tr>
                        
                          <tr>
                        
                        <td><input type="text" name="address" placeholder = "Address" ></td>
                        </tr>
                        
                          <tr>
                        
                        <td><input type="text" name="eircode" maxlength="7" placeholder = "Eircode"></td> <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                        </tr>
                          <tr>
                       
                        <td><input type="text" name="county" placeholder = "County"></td>
                        </tr>
                        
                          <tr>
                        
                        <td><input type="email" name="email" placeholder = "Email Address" ></td>
                        </tr>
                        
                          <tr>
                        
                        <td><input type="password" name="password" placeholder = "Password" ></td>
                        </tr>
                        
                        <tr>
                            <td>
                        <center><input type="Submit" value="Create Profile"></center></td>
                           <td>
                         
                            </td> 
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

