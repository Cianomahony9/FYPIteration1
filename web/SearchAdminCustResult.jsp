<%-- 
    Document   : SearchAdminCustResult
    Created on : 28-Jan-2021, 13:48:59
    Author     : Cian O'Mahony 117436194
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modifications : Changed boarder colour, inserted own links to navbar and changed titles, inserted form to body,changed table column names, changed footer copyright text to own website

code for database connection and output sourced and modified from https://www.youtube.com/watch?v=ToIQFP55s7Q
-->
<!-- Begin Modify code -->


<%
    // connection to databaase 
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/customer?useSSL=false"; //"useSSL=false" causing problem @ driver Keystone issue fixed from Stack overflow https://stackoverflow.com/questions/57112139/keystore-was-tampered-with-or-password-was-incorrect-still-not-working
    String userId ="root";
    String password ="OmahonyCian@98";
    
    // pulling data from searchadmincust jsp page
    String customername = request.getParameter("customername");
    
    int telephone = Integer.parseInt(request.getParameter("telephone"));  //code acqired and modified from stack overflow  https://stackoverflow.com/questions/9570963/passing-int-as-parameter-from-jsp-to-servlet
            
     // prepare connection to db
    try{
   Class.forName(driverName);
    }catch (ClassNotFoundException e){
        e.printStackTrace();
    }
    
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    
    
    %>


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
				<div class="inner">
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
                                        
                                         <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                         <h1>Logged in For ${adminlogin.store} </h1>
				</div>
			</header>
                
     
      <!-- Table code acquired and modified from https://www.youtube.com/watch?v=ToIQFP55s7Q -->
    <div class="table-wrapper">
	<table>
        <center><h3>Customer Details</h3></center> 
		<thead>
		<tr>
		    <th>Customer First Name</th>
                    <th>Customer Last Name</th>
		    <th>Gender</th>
		    <th>Height</th>
                    <th>Weight</th>
		    <th>Leg Length</th>
		    <th>Arm Length</th>
                </tr>
                </thead>
<% 
    // sql statement to search database for customername and telephone
// start connection
    try{
    connection = DriverManager.getConnection(connectionUrl, userId, password);
    statement= connection.createStatement();
    String sql = "SELECT * FROM "+customername+" Where telephone = "+telephone+"";
       //declare results as variables
    resultSet=statement.executeQuery(sql);
    while(resultSet.next()){
            
%>
    <tbody>
        <tr>
             <!-- Table code acquired and modified from https://www.youtube.com/watch?v=ToIQFP55s7Q -->
     <!-- output search results --> 
		<td><%=resultSet.getString("name")%> </td>
		<td><%=resultSet.getString("familyname")%> </td>
                <td><%=resultSet.getString("gender")%> </td>
		<td><%=resultSet.getString("height")%>cm </td>
		<td><%=resultSet.getString("weight")%>kg</td>
                <td><%=resultSet.getString("Insideleg")%>cm </td>
                <td><%=resultSet.getString("armlength")%>cm </td>
        </tr>
    </tbody>
<%
    }
    // catch exceptions
    }catch (Exception e ){
            e.printStackTrace();
    }
%>
       </table>
        </div>
    
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