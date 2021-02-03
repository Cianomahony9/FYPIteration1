<%-- 
    Document   : RetrieveFamilyResults
    Created on : 29-Jan-2021, 15:09:50
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

code for database connection and output sourced and modified from https://www.youtube.com/watch?v=ToIQFP55s7Q

Modification includes: changing of navbar size and colour, inserting own titles and links, inserted own form search function, changed footer copyright
-->

<!-- Begin Modify code -->
<% 
    //connection to db
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/customer?useSSL=false";
    String userId ="root";
    String password ="OmahonyCian@98";
    
    // data taken from jsp page
    String familyname1 = request.getParameter("familyname1");
   
    
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
        <center><h3>Open Orders</h3></center> 
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
// calling data from data base
try{
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement= connection.createStatement();
String sql = "SELECT * FROM "+familyname1+"";
       
resultSet=statement.executeQuery(sql);
while(resultSet.next()){
            
String name =resultSet.getString("name");
                
String familyname = resultSet.getString("familyname");
                                                                                   // variable for results
String insideleg = resultSet.getString("insideleg");
              
String armlength = resultSet.getString("armlength");
%>
    <tbody>
	<tr>
        <!-- Displaying these results -->
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
 // code for linking hidden values modified and acquired from https://www.geeksforgeeks.org/hidden-form-field-using-annotation-java-servlet/   
// passing the results to the search bike servlet
out.print("<form action = 'searchBike'>");

out.print("<input type ='hidden' name='name' value ='"+name+"'>");

out.print("<input type ='hidden' name='familyname' value ='"+familyname+"'>");
                 
out.print("<input type ='hidden' name='insideleg' value ='"+insideleg+"'>");

out.print("<input type ='hidden' name='armlength' value ='"+armlength+"'>");

out.print("<td><input type='submit' value='Search Bike'></td>");

out.close();
       
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
