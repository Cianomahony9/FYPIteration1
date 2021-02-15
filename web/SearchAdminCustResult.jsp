<%-- 
    Document   : SearchAdminCustResult
    Created on : 28-Jan-2021, 13:48:59
    Author     : Cian
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
    String connectionUrl = "jdbc:mysql://localhost:3306/customer?useSSL=false";
    String userId ="root";
    String password ="OmahonyCian@98";
    
    // pulling data from jsp page
    String customername = request.getParameter("customername");
    
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
					<a href="index.html" class="logo">Bikes4U.ie</a>
					<nav id="nav">
						<a href="index.html">Home</a>
						<a href="SearchOrder.jsp">Search Order</a>
						<a href="BikeShops.jsp">View Bike Shops</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>
                
      <!-- Table -->
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
		    <th>Inside Leg Length</th>
		    <th>Arm Length</th>
                </tr>
                </thead>
<% 
    // sql statement to search database
    try{
    connection = DriverManager.getConnection(connectionUrl, userId, password);
    statement= connection.createStatement();
    String sql = "SELECT * FROM "+customername+"";
       
    resultSet=statement.executeQuery(sql);
    while(resultSet.next()){
            
%>
    <tbody>
        <tr>
     <!-- output search results --> 
		<td><%=resultSet.getString("name")%> </td>
		<td><%=resultSet.getString("familyname")%> </td>
                <td><%=resultSet.getString("gender")%> </td>
		<td><%=resultSet.getString("height")%> </td>
		<td><%=resultSet.getString("weight")%> </td>
                <td><%=resultSet.getString("Insideleg")%> </td>
                <td><%=resultSet.getString("armlength")%> </td>
        </tr>
    </tbody>
<%
    }
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