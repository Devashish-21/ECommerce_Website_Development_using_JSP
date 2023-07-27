<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String addMoney=request.getParameter("addMoney");

int addm=Integer.parseInt(addMoney);

try
{
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update users set wallet=wallet+? where email=?");
	ps.setInt(1,addm);
	ps.setString(2, email);
	ps.executeUpdate();
	response.sendRedirect("wallet.jsp");
}

catch (Exception e)
{
	System.out.println(e);
}
%>