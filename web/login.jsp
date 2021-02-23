<%-- 
    Document   : login
    Created on : 16-Feb-2021, 12:57:25
    Author     : Cian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modifications include changing of navbar colour and size, inserted own headings and links, inserted own cover photo, changed size of cover photo, changed colour of banner, inerted own functions to body (search create) changed copyright footer to own website 
-->
<html>
    <head>  <!-- Begin Modify Code -->
		<title>Bikes4U.ie</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="/FYPCian/css/main.css" />
       </head>
	<body>
		<!-- Banner -->
     <section id="banner">
	<h1>Welcome to Bikes4U.ie</h1>
        <h1>Customer Login</h1>
     </section>
                <!-- code acquired and modifed from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
        <center>
        <form action ="CustLoginServ" method ="post">
            <table style ="with: 50%">
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email"/></td>
                 </tr>
                 
                 <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"/></td>
                 </tr>
            </table>
            <center>
        <input type ="submit" value="Login"/>
        
        <a href="/FYPCian/AdminLogin.jsp" class="button special">Admin Login</a>
        
        <a href="/FYPCian/CustProfile.jsp" class="button special">Register</a>
        
        </center>
        </form>
            </center>
    </body>
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
</html>
