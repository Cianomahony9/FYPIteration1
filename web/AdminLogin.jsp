<%-- 
    Document   : AdminLogin
    Created on : 16-Feb-2021, 14:43:46
    Author     : Cian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modifications include changing of navbar colour and size, inserted own headings and links, inserted own cover photo, changed size of cover photo, changed colour of banner, inserted own functions to body (search create) changed copyright footer to own website 
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
	<h1>Employee / Administration Login</h1>
     </section>
                <!-- code acquired and modifed from https://www.youtube.com/watch?v=UBOZgNxsiwA -->
        <form action ="AdminLoginServ" method ="post">
            <table style ="with: 100%">
                
              <!-- Admin/employee inserts email and password for given store to access admin/employee side of  website  -->
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email"/></td>
                 </tr>
                 
                 <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"/></td>
                 </tr>
                    
            </table>
            <center> 
                <!-- sent to adminlogin servlet -->
        <input type ="submit" value="Admin/Employee Login" />
        </center>
        
        </form>
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