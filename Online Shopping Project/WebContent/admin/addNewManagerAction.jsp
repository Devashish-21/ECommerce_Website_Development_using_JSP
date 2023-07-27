<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into managers values(?,?,?,?)");
	ps.setString(1,id);
	ps.setString(2,name);
	ps.setString(3,email);
	ps.setString(4,password);
	
	ps.executeUpdate();
	response.sendRedirect("addNewManager.jsp?msg=done");
}

catch(Exception e)
{
	response.sendRedirect("addNewManager.jsp?msg=wrong");
}
%>

