<%-- 
    Document   : StoreOrderSearch
    Created on : 28-Jan-2021, 12:11:56
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

Modifications include changing navabar size and colour, inserted own titles and links, inserted link to own database, changed footer copyright

code for database connection and output sourced and modified from https://www.youtube.com/watch?v=ToIQFP55s7Q
-->

<!-- Begin Modify code -->

<%
    //database connection
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/order?useSSL=false";
    String userId ="root";
    String password ="OmahonyCian@98";
    
    String orderstorename = request.getParameter("orderstorename");
    
    
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
		<%-- begin modify code --%>
                <title>Bikes4U.ie</title>
             <meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="/FYPCian/css/main.css" />
	</head>
	<body class="subpage">

		<!-- Header -->
			<header id="header">
				<div class="inner">
					<a href="AdminPage.jsp" class="logo">Bikes4U.ie</a>
                                       
					<nav id="nav">
						<a href="AdminPage.jsp">Home</a>
                                                
						<a href="SearchAdminOrder.jsp">Search Order</a>
                                                
						<a href="SearchAdminCust.jsp">View Customer Records</a>
                                                
                                                <a href="SearchAdminCustProfiles.jsp">View Customer Profiles</a>
                                                
                                                 <!--logout and displaying name on page code acquired and modified from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                                <a href ="<%=request.getContextPath() %>/AdminLogoutServ"> Logout</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                                        
                                         <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                       <h1>Logged in For ${adminlogin.store} </h1>
				</div>
			</header>
        <!-- Table -->
	<div class="table-wrapper">
	<table>
           <center><h3>Open Orders for <%= orderstorename%></h3></center> 
	   <thead>
		<tr>
		<th>Order Number</th>
		<th>Order Date</th>
		<th>Collection Date</th>
                <th>Customer First Name</th>
                <th>Customer Second Name</th>
		<th>Bike Name</th>
                <th>Bike Price</th>
                </tr>
	    </thead>
<%
    //slq statement to search database
    try{
    connection = DriverManager.getConnection(connectionUrl, userId, password);
    statement= connection.createStatement();
        
      
    resultSet=statement.executeQuery("SELECT * FROM orderdetails WHERE bikelocation ='"+orderstorename+"'");
          
    while(resultSet.next()){
            
%>
    
    <tbody>
	<tr>
        <!--output search results -->
        <td><%=resultSet.getInt("ordernumber")%> </td>
	<td><%=resultSet.getString("orderdate") %> </td>
        <td><%=resultSet.getString("collectiondate") %> </td>
	<td><%=resultSet.getString("custfname")%> </td>
        <td><%=resultSet.getString("custlname")%> </td>
        <td><%=resultSet.getString("bikename")%> </td>
        <td>€<%=resultSet.getString("bikeprice") %> </td>
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
