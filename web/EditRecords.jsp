<%-- 
    Document   : EditRecords
    Created on : 01-Mar-2021, 19:20:34
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

Modifications include changing navabar size and colour, inserted own titles and links, changed footer copyright

-->


<%
    // connection to databaase 
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/customer?useSSL=false";
    String userId ="root";
    String password ="OmahonyCian@98";
    
    // pulling data from jsp page
    String custfname = request.getParameter("custfname");
    
    int custtelephone = Integer.parseInt(request.getParameter("custtelephone"));  //code acqired and modified from stack overflow  https://stackoverflow.com/questions/9570963/passing-int-as-parameter-from-jsp-to-servlet
    
    String custlname = request.getParameter("custlname");
    
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
					<a href="HomePage.jsp" class="logo">Bikes4U.ie</a>
					<nav id="nav">
						<a href="HomePage.jsp">Home</a>
						<a href="SearchOrder.jsp">Search Order</a>
						<a href="BikeShops.jsp">View Bike Shops</a>
                                                <a href ="<%=request.getContextPath() %>/CustLogoutServ"> Logout</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                                         <h1>Logged in as ${custlogin.fname} </h1>
				</div>
			</header>
 <% 
    // sql statement to search database
    try{
    connection = DriverManager.getConnection(connectionUrl, userId, password);
    statement= connection.createStatement();
    String sql = "SELECT * FROM "+custlname+" WHERE name = '"+custfname+"'  AND telephone = '"+custtelephone+"' ";
       
    resultSet=statement.executeQuery(sql);
    while(resultSet.next()){
            
%>                              
       


<form action="updaterecord"method="POST">
                <table width="400px" Border="1">
                 <tr>
                        <tr colspan="2"><center><h1> Current Record Details</h1></center></tr> 
          
                        <td>First Name<input type="text" name="custfname" value = <%=resultSet.getString("name")%> readonly></td>
                        <td>Last Name<input type="text" name="custlname" value = <%=resultSet.getString("familyname")%>  readonly></td>
                        <td>Gender<input type="text" name="custgender" value = <%=resultSet.getString("gender")%> readonly></td>
                        <td>Height<input type="text" name="custheight" value = <%=resultSet.getString("height")%> readonly></td>
                        <td>Weight<input type="text" name="custaddress" value = <%=resultSet.getString("weight")%> readonly></td>
                        <td>Inside Leg Length<input type="text" name="custinsideleg" value = <%=resultSet.getString("Insideleg")%> readonly></td>
                        <td>Arm Length<input type="text" name="custarmlength" value = <%=resultSet.getString("armlength")%> readonly></td>
                        <td>telephone<input type="text" name="custtelephone" value =<%=resultSet.getInt("telephone")%>  readonly></td>
                      </table>
                <table width="400px" Border="1">
                     <tr colspan="2"><center><h1>Edit Dimension Records</h1></center></tr> 
                    
                 
                         <td> Height <input type="text" maxlength="8" name="height" placeholder="Height" ></td> <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                         
                         <td> Weight <input type="text"  maxlength="5" name="weight" placeholder="Weight" ></td> <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                         
                         <td> Inside Leg Length <input type="text" maxlength="4" name="insideleg" placeholder="Inside Leg Length" ></td> <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                         
                         <td> Arm Length<input type="text" maxlength="4" name="armlength" placeholder="Arm Length" ></td><%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                     
                         
            </table>
                       <center><input type="Submit" value="Insert Edit"/>
                    </center>
         </form>       
                
                
<%
    }
    }catch (Exception e ){
            e.printStackTrace();
    }
%>
                   <!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="flex">
                                            <!-- Border to split search and Order Display -->
                                            
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