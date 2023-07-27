<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wallet</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Wallet <i class="fa fa-wallet"></i></div>
<%
int balance=0;
String Email=session.getAttribute("email").toString();
Connection con=ConnectionProvider.getCon();
PreparedStatement ps=con.prepareStatement("select wallet from users where email=?");
ps.setString(1,Email);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
	balance=rs.getInt(1);
	
}
%>
<h3 class="alert">BALANCE: <%out.println(balance); %></h3>

<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>

<h3 class="alert">Something went wrong! Try again</h3>
<form action="walletAction.jsp" method="post">
<h3>Enter Amount</h3>
<input class="input-style" type="number" name="addMoney" placeholder="Enter Your New Mobile Number" required>
<button class="button" type="submit">Add money<i class='far fa-arrow-alt-circle-right'></i></button>

       
     
      <br>
      <br>
      <br>

</body>
</html>