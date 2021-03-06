<%-- 
    Document   : EditRecords
    Created on : 01-Mar-2021, 19:20:34
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

Modifications include changing navabar size and colour, inserted own titles and links, changed footer copyright

** code for database connection and output sourced and modified from https://www.youtube.com/watch?v=ToIQFP55s7Q **
-->


<%
    // connection to databaase 
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/customer?useSSL=false";
    String userId ="root";
    String password ="OmahonyCian@98";
    
    // pulling data from view cust account jsp page
    String custfname = request.getParameter("custfname");
    
    int custtelephone = Integer.parseInt(request.getParameter("custtelephone"));  //code acqired and modified from stack overflow  https://stackoverflow.com/questions/9570963/passing-int-as-parameter-from-jsp-to-servlet
    
    String custlname = request.getParameter("custlname");
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
				<div class="inner"> <!-- Begin Modify code -->
					<a href="HomePage.jsp" class="logo">Bikes4U.ie</a> <!--link to home page -->
					<nav id="nav">
						<a href="HomePage.jsp">Home</a> <!--link to home page -->
                                                
						<a href="SearchOrder.jsp">Search Order</a> <!--link to search order page -->
                                                
						<a href="BikeShops.jsp">View Bike Shops</a> <!--link to view bike shops page -->
                                                
                                                 <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                        
                                                <a href ="<%=request.getContextPath() %>/CustLogoutServ"> Logout</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                                        
                                         <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                        <a href="ViewCustAccount.jsp">Logged in as ${custlogin.fname}</a>  <!-- Custs name is displayed from db - When clicked user is redirected to account details page -->
				</div>
			</header>
 <% 
    // sql statement to search database
 // start connection with db
 //using cust details from viewcustaccount.jsp the custs bike specfic details are outputted from db
    try{
    connection = DriverManager.getConnection(connectionUrl, userId, password);
    statement= connection.createStatement();
    String sql = "SELECT * FROM "+custlname+" WHERE name = '"+custfname+"'  AND telephone = '"+custtelephone+"' ";
       //declaring outputted values as variabes
    resultSet=statement.executeQuery(sql);
    while(resultSet.next()){
            
%>                              
       

<!-- form layout acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo -->
<form action="updaterecord"method="POST">
                <table width="400px" Border="1">
                 <tr> <!--Current details of cust are displayed from db -->
                        <tr colspan="2"><center><h1> Current Record Details</h1></center></tr> 
          <!--readonly ensures details cannot be edited -->
                        <td>First Name<input type="text" name="custfname" value = <%=resultSet.getString("name")%> readonly></td>
                        <td>Last Name<input type="text" name="custlname" value = <%=resultSet.getString("familyname")%>  readonly></td>
                        <td>Gender<input type="text" name="custgender" value = <%=resultSet.getString("gender")%> readonly></td>
                        <td>Height<input type="text" name="custheight" value = <%=resultSet.getString("height") + "cm"%> readonly></td>
                        <td>Weight<input type="text" name="custaddress" value = <%=resultSet.getString("weight") + "kg"%> readonly></td>
                        <td>Leg Length<input type="text" name="custinsideleg" value = <%=resultSet.getString("Insideleg") + "cm"%> readonly></td>
                        <td>Arm Length<input type="text" name="custarmlength" value = <%=resultSet.getString("armlength") + "cm"%> readonly></td>
                        <td>telephone<input type="text" name="custtelephone" value =<%=resultSet.getInt("telephone")%>  readonly></td>
                      </table>
                      
                      <!-- details to be edited are inserted here and sent to update record servlet which updates db -->
                <table width="400px" Border="1">
                    
                     <tr colspan="2"><center><h1>Edit Dimension Records</h1></center></tr> 
                    
                 
                         <td> Height (cm) <input type="text" maxlength="6" name="height" placeholder="Height" ></td> <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                         
                         <td> Weight (kg) <input type="text"  maxlength="3" name="weight" placeholder="Weight" ></td> <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                         
                         <td> Leg Length (cm)<input type="text" maxlength="2" name="insideleg" placeholder="Leg Length" ></td> <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                         
                         <td> Arm Length (cm) <input type="text" maxlength="2" name="armlength" placeholder="Arm Length" ></td><%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
            </table>
                       <center><input type="Submit" value="Insert Edit"/>
                    </center>
         </form>       
                
                
<%
    } // catch exceptions
    }catch (Exception e ){
            e.printStackTrace();
    }
%>
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