<%-- 
    Document   : RetrieveFamilyResults
    Created on : 29-Jan-2021, 15:09:50
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

code for database connection and output sourced and modified from https://www.youtube.com/watch?v=ToIQFP55s7Q

Modification includes: changing of navbar size and colour, inserting own titles and links, inserted own form search function, changed footer copyright
-->

<!-- Begin Modify code -->
<% 
    //connection to db
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/customer?useSSL=false"; //"useSSL=false" causing problem @ driver Keystone issue fixed from Stack overflow https://stackoverflow.com/questions/57112139/keystore-was-tampered-with-or-password-was-incorrect-still-not-working
    String userId ="root";
    String password ="OmahonyCian@98";
    
    // data taken from retrievefamily jsp page
    String familyname1 = request.getParameter("familyname1");
    
    int telephone = Integer.parseInt(request.getParameter("telephone")); // https://stackoverflow.com/questions/9570963/passing-int-as-parameter-from-jsp-to-servlet
    
   
    
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
					<a href="HomePage.jsp" class="logo">Bikes4U.ie</a>
					<nav id="nav">
						<a href="HomePage.jsp">Home</a>
                                                
						<a href="SearchOrder.jsp">Search Order</a>
                                                
						<a href="BikeShops.jsp">View Bike Shops</a>
                                                
                                                 <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                                <a href ="<%=request.getContextPath() %>/CustLogoutServ"> Logout</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                                        
                                         <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                          <a href="ViewCustAccount.jsp">Logged in as ${custlogin.fname}</a>  <!-- Custs name is displayed from db - When clicked user is redirected to account details page -->
				</div>
			</header>
             <!-- Table code acquired and modified from https://www.youtube.com/watch?v=ToIQFP55s7Q -->
<div class="table-wrapper">
	<table>
        <center><h3>Customer Profiles</h3></center> 
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
// calling data from database and making connection
// selecting all rows where familyname and telephone number are same as those entered
try{
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement= connection.createStatement();
String sql = "SELECT * FROM "+familyname1+" WHERE telephone = "+telephone+"";
       
// defining results as varaibles 
resultSet=statement.executeQuery(sql);
while(resultSet.next()){
            
String name = resultSet.getString("name");
                
String familyname = resultSet.getString("familyname");
                                                                                   // variable for results to be sent to search bike servlet
String insideleg = resultSet.getString("insideleg");
              
String armlength = resultSet.getString("armlength");
%>
    <tbody>
	<tr>
        <!-- Displaying these results -->
	<td><%=resultSet.getString("name")%> </td>
	<td><%=resultSet.getString("familyname")%> </td>
        <td><%=resultSet.getString("gender")%> </td>
	<td><%=resultSet.getString("height")%>cm </td>
	<td><%=resultSet.getString("weight")%>kg </td>
        <td><%=resultSet.getString("Insideleg")%>cm</td>
        <td><%=resultSet.getString("armlength")%>cm</td>
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

out.print("<td><center><input type='submit' value='Search Bike'></center></td>");

 out.print("</form>");
       
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
